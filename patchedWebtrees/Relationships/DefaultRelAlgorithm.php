<?php

declare(strict_types=1);

namespace Cissee\WebtreesExt\Relationships;

use Cissee\WebtreesExt\Modules\RelationshipPath;
use Cissee\WebtreesExt\Modules\RelationshipPathSplit;
use Cissee\WebtreesExt\Modules\RelationshipPathSplitPredicate;

//shortest length, as in original impl (Functions.php)
//(if $minimizeSplits is set, that is the first criteria)
class DefaultRelAlgorithm implements RelAlgorithm2 {
  
  protected $minimizeSplits;
  
  public function __construct(
          bool $minimizeSplits = false) {
    
    $this->minimizeSplits = $minimizeSplits;
  }
  
  public function getRelationshipName(
          RelDefs $defs,
          RelPathJoiner $joiner,
          RelationshipPath $path): string {
        
    $ret = $this->getFullyMatchedPath($defs, $joiner, $path);
    return ($ret === null)?'':$ret->nominative();
  }
  
  protected static $relationshipsCache = [];  
         
  public function getFullyMatchedPath(
          RelDefs $defs,
          RelPathJoiner $joiner,
          RelationshipPath $path): ?FullyMatchedPath {
        
    $matchedPath = $defs->getMatchedPath2($path);
    
    if ($matchedPath !== null) {
      return $matchedPath;
    }
    
    // Split the relationship into sub-relationships, e.g., third-cousin’s great-uncle.
    // Try splitting at every point, and choose the path with the shorted translated name.
    // But before starting to recursively go through all combinations, do a cache look-up
    if (array_key_exists($path->key(), self::$relationshipsCache)) {
        return self::$relationshipsCache[$path->key()];
    }

    $relationship = $this->getFullyMatchedPathViaSplit($defs, $joiner, $path);
        
    // and store the result in the cache
    self::$relationshipsCache[$path->key()] = $relationship;
    
    /*
    if ($relationship === null) {
      error_log("[DefaultRelAlgorithm] nothing found for " . $path);
    } else {
      error_log("Best split on " . $path . " is " . $relationship->nominative());
    }
    */
    
    return $relationship;
  }
  
  protected function compare(FullyMatchedPath $a, FullyMatchedPath $b): int {
    
    $primary = 0;
    if ($this->minimizeSplits) {
      $primary = $a->numberOfSplits() <=> $b->numberOfSplits();
    }
    
    if ($primary !== 0) {
      return $primary;
    }
    
    //this assumes the length of nominative and genitive doesn't differ widely
    return strlen($a->nominative()) <=> strlen($b->nominative());
  }
          
          
  /**
   * 
   * @param RelDefs $defs
   * @param RelPathJoiner $joiner
   * @param RelationshipPath $path
   * @param RelationshipPathSplitPredicate|null $splitter override hook
   * @return FullyMatchedPath|null
   */
  protected function getFullyMatchedPathViaSplit(
          RelDefs $defs,
          RelPathJoiner $joiner,
          RelationshipPath $path,
          ?RelationshipPathSplitPredicate $splitter = null): ?FullyMatchedPath {
    
    //error_log("getFullyMatchedPathViaSplit for ".$path);
    $relationship = null;
    
    $splits = $path->split($splitter);
    
    foreach ($splits as $split) {
      /** @var RelationshipPathSplit $split */
      
      $a = $this->getFullyMatchedPath($defs, $joiner, $split->head());
      $b = $this->getFullyMatchedPath($defs, $joiner, $split->tail());

      if (($a !== null) && ($b !== null)) {
        $tmp = $joiner->join($a, $b);

        if (($relationship === null) || ($this->compare($tmp, $relationship) < 0)) {
          $relationship = $tmp;
        }        
      }
    }
    
    return $relationship;
  }
}
