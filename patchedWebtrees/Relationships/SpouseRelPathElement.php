<?php

declare(strict_types=1);

namespace Cissee\WebtreesExt\Relationships;

use Cissee\WebtreesExt\Modules\RelationshipPath;
use Fisharebest\Webtrees\Auth;
use Fisharebest\Webtrees\Fact;
use Illuminate\Support\Collection;

class SpouseRelPathElement implements RelPathElement {
  
  const CODES = array(
      'hus:hus' => 'M',
      'hus:spo' => 'M',
      'wif:wif' => 'F',
      'wif:spo' => 'F',
      'spo:spo' => 'U');
    
  protected $code;
  protected $facts;
  protected $relevantFacts;

  public function minTimes(): int {
    return 1;
  }
  
  public function maxTimes(): int {
    return 1;
  }
  
  /**
   * 
   * @param string $code
   * @param array[string] $facts e.g. 'FAM:MARR'
   * @param array[string] $relevantFacts e.g. 'MARR'
   */
  public function __construct(
          string $code,
          array $facts,
          array $relevantFacts) {
    
    $this->code = $code;
    $this->facts = $facts;
    $this->relevantFacts = $relevantFacts;
  }
  
  public function matchPath(
          int $matchedPathElements,
          RelationshipPath $path, 
          array $refs): Collection {    
    
    if ($path->isEmpty()) {
      return new Collection();
    }

    $split = $path->splitBefore(1);
    $head = $split->head();
    $tail = $split->tail();
      
    $sex = $this->match($head->last()->rel());
    if ($sex === null) {
      return new Collection();
    }
    
    $family = $head->last()->family();
    if ($family === null) {
      return new Collection();
    }
    
    $event = $family->facts($this->relevantFacts, true, Auth::PRIV_HIDE, true)->last();
    
    if (!($event instanceof Fact)) {
      return new Collection();
    }  
    
    if (!in_array($event->tag(), $this->facts)) {
      return new Collection();
    }
    
    //we have a match!
    //error_log("RelPathElement matched fixed! ". $path . " as " . $sex);
    
    $ret = [];
    $ret []= new MatchedPartialPath($matchedPathElements + 1, $tail, $refs);
    return new Collection($ret);
  }
  
  public function match(string $code): ?string {
    $key = $code . ":" . $this->code;
    
    if (array_key_exists($key, self::CODES)) {
      return self::CODES[$key];
    }
    return null;
  }
  
  public static function typicalRelevantFacts(): array {
    return ['ANUL', 'DIV', 'ENGA', 'MARR', '_NMR'];
  }
}
