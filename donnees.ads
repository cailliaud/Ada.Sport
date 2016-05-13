WITH Gestion_Enfant,gestion_sport;
use gestion_enfant,gestion_sport;
PACKAGE Donnees IS

   PROCEDURE Donnees1(A: OUT Activite;N: OUT Natural);
   PROCEDURE Donnees2 (TabS: IN OUT Tab_Sport;TabA: IN OUT Tab_Age; Tete:OUT PteurF);
   PROCEDURE Test_Ajout (Tabs: in out tab_sport ; Taba: in out tab_age) ;
END Donnees;

