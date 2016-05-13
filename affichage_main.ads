WITH Gestion_Enfant,gestion_sport;
USE Gestion_Enfant,gestion_sport;

PACKAGE Affichage_Main IS

   PROCEDURE Titre_Main;
   PROCEDURE Menu_principal ;
   PROCEDURE Menu_enfant;
   PROCEDURE  Menu_stat;
   PROCEDURE  Menu_visual;
   PROCEDURE  Menu_tarif;
   PROCEDURE Choix_Stat (
         Tete : IN  PteurF);
   PROCEDURE Choix_Gestion_Enfant (
         Tete : IN OUT PteurF;
         Tabs : IN OUT Tab_Sport;
         Taba : IN OUT Tab_Age);
   PROCEDURE Choix_Finance (
         Tete : IN PteurF);
   PROCEDURE Choix_Visualisation (

         Tabs : Tab_Sport;taba:tab_age);

END Affichage_Main;