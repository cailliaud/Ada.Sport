WITH Gestion_Sport, Gestion_Enfant;
Use gestion_sport, gestion_enfant;

PACKAGE Gestion_Globale IS

   PROCEDURE Maj_Groupe_Enfant (E: Enfant;TabS: IN OUT Tab_Sport; TabA: IN OUT Tab_Age) ;
   PROCEDURE Ajout_Complet(TabS: IN OUT Tab_Sport; TabA: IN OUT Tab_Age; Tete: IN OUT PteurF);
   Procedure suppression_complet (Tabs: in out tab_sport; Taba: in out Tab_age; tete : in out PteurF);
   PROCEDURE Modification_complet(Tete:PteurF;Tabs: in out tab_sport; Taba: in out tab_age) ;
END Gestion_Globale;

