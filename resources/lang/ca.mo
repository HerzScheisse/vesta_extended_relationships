��    e      D  �   l      �     �     �     �  )   �  "   		  "   ,	  \   O	  E   �	  �   �	  r   �
  p   )  :   �  '   �  B   �  e   @  6  �     �     �          $     6  !   G     i  	   |  �   �       v   !     �    �     �  0   �  _        |  2   �  M   �       "   9  $   \  F   �  )   �  w   �  q   j  .   �  4     )   @  8   j  W   �  y   �  �   u  �     �   �  n   V  d   �  V   *     �  B   �  �   �  ,   u     �  e   �  5     A   J     �  	   �  ?   �     �       W   "  \   z  2   �  {   
     �  2   �  #   �     �  4     �  8  _   �  u   %  0  �  h   �   '   5!  ?   ]!  '   �!  �   �!  �   �"  q   #  �   #  �   '$  t   �$  -   %%  1   S%  V  �%  T   �&  @   1'     r'     z'     �'  	   �'     �'  �  �'  1   �)     �)     �)  3   �)  *   /*  +   Z*  v   �*  K   �*  �   I+  |   ,  w   �,  G   -  %   M-  ?   s-     �-  \  3.     �/     �/     �/     �/     �/  "   0     )0  
   ?0  �   J0     �0  �   1     �1  I  �1  &   �2  @   "3  v   c3  #   �3  J   �3  c   I4  !   �4  !   �4  ,   �4  \   5  =   {5  �   �5  �   ?6  (   �6  8   �6  .   (7  7   W7  a   �7  �   �7  �   v8  �   9  �   �9  �   i:  o   �:  k   ^;     �;  :   �;  �   <  6   �<     �<     �<  ?   |=  E   �=  !   >  	   $>  T   .>     �>  #   �>  n   �>  v   .?  6   �?  �   �?     h@  R   �@  1   �@     A  <   A  �  YA  p   �B  �   SC  J  �C  n   1E  (   �E  L   �E  1   F  �   HF  �   G  z   �G  �   `H  �   I  �   �I  (   <J  ,   eJ  e  �J  m   �K  B   fL     �L     �L  +   �L     �L  #   M         3         H   "   d   2   )   V                          4       K   W   X       ,   6          8       +   c   $              e   ]   =              [   
   &   R       0             M      S   -   :                     Z            P   G   <   >   O   A       5          T   \   ;               Q   #   U          1   9   7          !      .   _   '   %          N   b   C      @       a          L   I       ?      *   E           `       B   	         (   F   Y   ^   D          J                    /         (see below for details). %1$s is %2$s of %3$s. (Number of relationships: %s) (that's overall almost as close as: %1$s) (that's overall as close as: %1$s) (that's overall closer than: %1$s) (that's overall not significantly closer than the closest relationship via common ancestors) A chart of an individual’s repeated ancestors, formatted as a tree. A module providing various algorithms used to determine relationships. Includes a chart displaying relationships between two individuals, as a replacement for the original 'Relationships' module. A module providing various algorithms used to determine relationships. Includes an extended 'Relationships' chart. All paths between the two individuals that contribute to the CoR (Coefficient of Relationship), as defined here: Allow persistent toggle (user may show/hide relationships) Also includes an extended '%1$s' block. And hopefully it shows how much better the new algorithm works ... Associated facts and events are displayed when the respective toggle checkbox is selected on the tab. Basically, each path (via common ancestors) between two individuals contributes to the CoR, inversely proportional to its length: Each path of length 2 (e.g. between full siblings) adds %1$s, each path of length 4 (e.g. between first cousins) adds %2$s, in general each path of length n adds (0.5)<sup>n</sup>. Chart Settings Closest Relationship: %s CoI; Coefficient of Inbreeding Common ancestor:  Common ancestors Common ancestors of %1$s and %2$s Common ancestors:  Debugging Determines the shortest path between two individuals via a LCA (lowest common ancestor), i.e. a common ancestor who only appears on the path once. Display Displays additional relationship information via the extended 'Families' tab, and the extended 'Facts and Events' tab. Do not show any relationship Each SLCA (smallest lowest common ancestor) essentially represents a part of the tree which both individuals share (as part of their ancestors). More technically, the SLCA set of two individuals is a subset of the LCA set (excluding all LCAs that are themselves ancestors of other LCAs). Families Tab Settings Find a closest relationship via common ancestors Find a closest relationship via common ancestors, or fallback to the closest overall connection Find all overall connections Find all relationships via lowest common ancestors Find all smallest lowest common ancestors, show a closest connection for each Find other overall connections Find other/all overall connections Find the closest overall connections Find the closest overall connections (preferably via common ancestors) Finished - all link dates are up-to-date. For close relationships similar to the previous option, but faster. Internally just a combination of two other methods. For large trees, this process may initially take several minutes. You can always safely abort and continue later. How to determine relationships between parents How to determine relationships to associated persons How to determine relationships to spouses How to determine relationships to the default individual If this is unexpected, and there are recent changes, you may have to follow this link:  If this option is checked, relationships to the associated individuals are only shown for the following facts and events. If you do not want to change the functionality with respect to the original Facts and Events tab, select 'Do not show any relationship' in the first block. If you do not want to change the functionality with respect to the original Families tab, select 'Do not show any relationship' everywhere. If you do not want to use the chart functionality, hide this chart via Control Panel > Charts > %1$s Vesta Extended Relationships (note that the chart is listed under the module name). If you select this option everywhere, you should also disallow persistent toggle, as it has no visible effect. In particular if both lists are empty, relationships will never be shown for these facts and events. In that case, you should also disallow persistent toggle, as it has no visible effect. Individuals with Patriarchs Intended as a replacement for the original 'Relationships' module. It is more complicated to determine this exact CoR, and the differences are usually small anyway. Therefore, only the Uncorrected CoR is calculated. Legacy algorithm for Relationship path names More Charts Note that the facts and events to be displayed at all may be filtered via the preferences of the tab. Only show relationships for specific facts and events Options referring to overall connections established before %1$s. Options to show in the chart Patriarch Patriarchs are the male end-of-line ancestors ('Spitzenahnen'). Pedigree collapse Pedigree collapse tree of %s Prefers partial paths via common ancestors, even if there is no direct common ancestor. Same option as in the original relationship chart, further configurable via recursion level: Same option as in the original relationship chart. Searching for regular overall connections would be pointless here because there is always a trivial HUSB - WIFE connection. Show common ancestors Show common ancestors on top of relationship paths Show legacy relationship path names Synchronization Synchronize trees to obtain dated relationship links The CoR (Coefficient of Relationship) is proportional to the number of genes that two individuals have in common as a result of their genetic relationship. Its calculation is based on Sewall Wright's method of path coefficients. Its value represents the proportion of genes held in common by two related individuals over and above those held in common by the whole population. More details here:  The following options refer to the same algorithms as used in the extended relationships chart: The following options use dated links, i.e. links that have been established before the date of the respective event. The process should be repeated (but will finish much faster) whenever a tree is edited, otherwise you may obtain inconsistent relationship data (displayed relationships are always valid, but they may not actually have been established at the given date, if changes in the tree are not synchronized here). The same information may be obtained via the branches list, where they show up as the heads of branches. There are no recorded common ancestors. There is no recorded pedigree collapse within %1$s generations. There is no recorded pedigree collapse. Therefore, if one of the following options is selected, overall connections are determined via dated links, i.e. links that have been established before the date of the respective event. These relationships may only be calculated efficiently by preprocessing the tree data, via the synchronization link at the top of this page. This allows you to present meaningful connections, such as 'widowed husband marries the sister of his dead wife'. This list provides an overview by surname, and may be used to determine whether all individuals with a specific surname are actually descended from a common patriarch. This process calculates dates for all INDI - FAM links, so that relationships at a specific point in time can be calculated efficiently. This seems more useful in most cases (e.g. to determine the relationship to a godparent at the time of the baptism). Uncorrected CoR (Coefficient of Relationship) Uncorrected CoR (Coefficient of Relationship): %s Under normal circumstances the proportion of genes transmitted from ancestor to descendant &ndash; as estimated by Σ(0.5)<sup>n</sup> &ndash;  and the proportion of genes they hold in common (the true coefficient of relationship) are the same. If there has been any inbreeding, however, there may be a slight discrepancy, as explained here:  You can disable this via the module preferences, it's mainly intended for debugging. You may also adjust the access level of this part of the module. parents show full pedigree show repeated ancestors once unlimited via legacy algorithm: %s Project-Id-Version: Catalan (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Catalan <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-extended-relationships/ca/>
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 5.2
  (vegeu més avall per obtenir més informació). %1$s és %2$s de %3$s. (Nombre de relacions: %s (Això és en general gairebé tan proper com: %1$s (Això és en general tan proper com: %1$s (Això és en general més a prop que: %1$s (que en general no és significativament més propera que la relació més propera a través dels avantpassats comuns) Un gràfic dels avantpassats repetits d'un individu, formatat com un arbre. Un mòdul que proporciona diversos algorismes utilitzats per determinar relacions. Inclou un gràfic que mostra les relacions entre dos individus, com a substitut del mòdul original de "Relacions". Un mòdul que proporciona diversos algorismes utilitzats per determinar relacions. Inclou un gràfic ampliat de "Relacions". Tots els camins entre els dos individus que contribueixen al CoR (Coeficient de Relació), tal com es defineixen aquí: Permet el commutador persistent (l'usuari pot mostrar/amagar relacions) També inclou un bloc ampliat '%1$s'. I esperem que mostre quant millor funciona el nou algorisme ... Els fets i els esdeveniments associats es mostren quan la casella de commutació corresponent està seleccionada a la pestanya. Bàsicament, cada camí (a través d'avantpassats comuns) entre dos individus contribueix al CdR, inversament proporcional a la seva longitud: Cada camí de longitud 2 (per exemple, entre germans complets) suma %1$s, cada camí de longitud 4 (per exemple, entre cosins primers) suma %2$s, en general cada camí de longitud n suma (0,5)<Sup>n</sup>. Configuració del gràfic Relació més propera: %s CoI; Coeficient d'endogàmia Ancestre comú:  Avantpassats comuns Avantpassats comuns de %1$s i %2$s Avantpassats comuns:  Depuració Determina el camí més curt entre dos individus a través d'un ACV (avantpassat comú més proper), és a dir, un avantpassat comú que només apareix en el camí una vegada. Mostrar Mostra informació addicional sobre les relacions a través de la pestanya “Famílies” ampliada i la pestanya “Fets i esdeveniments” ampliada. No mostrar cap relació Cada SLCA (avantpassat comú més proper i més baix) representa essencialment una part de l'arbre que tots dos individus comparteixen (com a part dels seus avantpassats). Més tècnicament, el conjunt SLCA de dos individus és un subconjunt del conjunt ACV (excloent tots els ACV que són al seu torn avantpassats d'altres ACV). Configuració de la pestanya Famílies Trobar una relació més propera a través d'avantpassats comuns Trobeu una relació més propera mitjançant avantpassats comuns o una alternativa a la connexió general més propera Troba totes les connexions generals Trobeu totes les relacions a través dels avantpassats comuns més propers Trobeu tots els avantpassats comuns més propers, mostreu una connexió més propera per a cadascun Trobeu altres connexions generals Trobeu altres connexions generals Trobeu les connexions generals més properes Trobeu les connexions globals més properes (preferiblement a través d'avantpassats comuns) Finalitzat: totes les dates de l'enllaç estan actualitzades. Per a relacions estretes similars a l'opció anterior, però més ràpides. Internament només una combinació d'altres dos mètodes. Per als arbres grans, aquest procés pot trigar inicialment diversos minuts. Sempre podeu avortar amb seguretat i continuar més tard. Com determinar les relacions entre pares Com determinar les relacions amb les persones associades Com determinar les relacions amb els cònjuges Com determinar les relacions amb l'individu per defecte Si això és inesperat, i hi ha canvis recents, és possible que hagis de seguir aquest enllaç:  Si aquesta opció està marcada, les relacions amb les persones associades només es mostren per als fets i esdeveniments següents. Si no voleu canviar la funcionalitat respecte a la pestanya Fets i esdeveniments originals, seleccioneu "No mostris cap relació" al primer bloc. Si no voleu canviar la funcionalitat respecte a la pestanya Famílies original, seleccioneu "No mostris cap relació" a tot arreu. Si no voleu utilitzar la funcionalitat del gràfic, amagueu aquest gràfic mitjançant el Tauler de control > els gràfics > %1$s Vesta Extended Relations (tingueu en compte que el gràfic apareix sota el nom del mòdul). Si seleccioneu aquesta opció a tot arreu, també hauríeu de desactivar el commutador persistent, ja que no té cap efecte visible. En particular, si ambdues llistes estan buides, mai no es mostraran relacions per aquests fets i esdeveniments. En aquest cas, també hauríeu de desautoritzar el commutador persistent, ja que no té cap efecte visible. Individus amb patriarques Pensat com a substitut del mòdul original de "Relacions". És més complicat determinar aquest CoR exacte, i les diferències solen ser petites de totes maneres. Per tant, només es calcula el CoR no corregit. Algorisme heretat per als noms dels camins de relació Més gràfics Tingueu en compte que els fets i esdeveniments que es mostraran es poden filtrar a través de les preferències de la pestanya. Mostrar relacions només per a fets i esdeveniments específics Opcions referides a connexions globals establertes anteriorment %1$s. Opcions que es mostren al gràfic Patriarca Els patriarques són els avantpassats masculins de final de línia ('Spitzenahnen'). Col·lapse del pedigrí Arbre genealògic col·lapsat de %s Prefereix camins parcials a través d'avantpassats comuns, encara que no hi hagi un avantpassat comú directe. La mateixa opció que en el diagrama de relacions original, configurable a més mitjançant el nivell de recursivitat: La mateixa opció que al quadre de relacions original. La recerca de connexions generals regulars no tindria sentit aquí perquè sempre hi ha una connexió trivial HUSB - WIFE (Marit - Muller). Mostra els avantpassats comuns Mostra els avantpassats comuns a la part superior de les trajectòries de relació Mostrar els noms dels camins de relació heretats Sincronització Sincronitzar arbres per obtenir enllaços de relació datats El CoR (CoR of Relationship) és proporcional al nombre de gens que dos individus tenen en comú com a resultat de la seva relació genètica. El seu càlcul es basa en el mètode de Sewall Wright de coeficients de trajectòria. El seu valor representa la proporció de gens que tenen en comú dos individus emparentats per sobre els quals té en comú tota la població. Més detalls aquí:  Les opcions següents fan referència als mateixos algorismes que s'utilitzen al gràfic de relacions ampliades: Les opcions següents utilitzen enllaços datats, és a dir, enllaços que s'han establert amb anterioritat a la data de l'esdeveniment respectiu. El procés s'ha de repetir (però acabarà molt més ràpid) cada vegada que s'edita un arbre, en cas contrari es poden obtenir dades de relació inconsistents (les relacions mostrades sempre són vàlides, però és possible que no s'hagin establert realment en la data donada, si els canvis en l'arbre no se sincronitzen aquí). La mateixa informació es pot obtenir a través de la llista d'oficines, on apareixen com a caps de sucursals. No hi ha avantpassats comuns registrats. No hi ha cap col·lapse de pedigrí registrat a l'interior %1$s Generacions. No hi ha constància d'un col·lapse de pedigrí. Per tant, si se selecciona una de les opcions següents, les connexions globals es determinen mitjançant enllaços datats, és a dir, enllaços que s'han establert abans de la data de l'esdeveniment respectiu. Aquestes relacions només es poden calcular de manera eficient mitjançant el processament previ de les dades de l'arbre, a través de l'enllaç de sincronització a la part superior d'aquesta pàgina. Això us permet presentar connexions significatives, com ara "el marit vidu es casa amb la germana de la seva dona morta". Aquesta llista proporciona una visió general per cognom, i es pot utilitzar per determinar si tots els individus amb un cognom específic són realment descendents d'un patriarca comú. Aquest procés calcula les dates de tots els enllaços INDI - FAM, de manera que les relacions en un moment determinat es poden calcular de manera eficient. Això sembla més útil en la majoria dels casos (per exemple, per determinar la relació amb un padrí en el moment del baptisme). CoR no corregit (coeficient de relació) CoR no corregit (coeficient de relació): %s En circumstàncies normals, la proporció de gens transmesos d'avantpassat a descendent &ndash; segons estimació de Σ(0,5)<Sup>n</sup> &ndash;  i la proporció de gens que tenen en comú (el veritable coeficient de relació) és la mateixa. No obstant això, si hi ha hagut alguna endogàmia, pot haver-hi una lleugera discrepància, com s'explica aquí:  Podeu desactivar-ho mitjançant les preferències del mòdul, està pensat principalment per a la depuració. També podeu ajustar el nivell d'accés d'aquesta part del mòdul. pares Mostra el pedigrí complet Mostra els avantpassats repetits una vegada il·limitat Mitjançant l'algorisme heretat: %s 