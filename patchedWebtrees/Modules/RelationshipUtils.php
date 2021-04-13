<?php

declare(strict_types=1);

namespace Cissee\WebtreesExt\Modules;

use Fisharebest\Localization\Locale\LocaleDe;
use Fisharebest\Localization\Locale\LocaleEn;
use Fisharebest\Localization\Locale\LocaleNl;
use Fisharebest\Localization\Locale\LocaleSk;
use Fisharebest\Webtrees\I18N;
use function hrtime;

class RelationshipUtils {
  
  public static function getRelationshipName(
          RelationshipPath $path): string {
    
    $start = hrtime(true);
    $ret = self::doGetRelationshipName($path);        
    $end = hrtime(true);
    $time1 = intdiv((int)($end - $start), 1000000);

    if ($time1 > 1000) {
      error_log('[RelationshipUtils] slow path, optimize this via better splitting! '.$path);
      error_log('[RelationshipUtils] getRelationshipName took: ' . $time1 . ' ms');
      error_log('[RelationshipUtils] language: ' . I18N::languageTag());
    }
    
    return $ret;
  }
  
  protected static $ext = null;  
 
  protected static function doGetRelationshipName(
          RelationshipPath $path): string {
      
      if (I18N::locale() instanceof LocaleEn) {
        if (self::$ext === null) {
          self::$ext = new LanguageEnglishExt();
        }
        
        return self::$ext->getRelationshipName($path);
      }
      
      if (I18N::locale() instanceof LocaleDe) {
        if (self::$ext === null) {
          self::$ext = new LanguageGermanExt();
        }        
        
        return self::$ext->getRelationshipName($path);        
      }
      
      if (I18N::locale() instanceof LocaleSk) {
        if (self::$ext === null) {
          self::$ext = new LanguageSlovakExt();
        }
        
        return self::$ext->getRelationshipName($path);
      }
      
      if (I18N::locale() instanceof LocaleNl) {
        if (self::$ext === null) {
          self::$ext = new LanguageDutchExt();
        }
        
        return self::$ext->getRelationshipName($path);
      }
      
      return $path->getRelationshipNameLegacy();
  }    
}
