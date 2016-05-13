WITH saisie_Securise;
Use saisie_securise;

PACKAGE Gestion_Sport IS
   TYPE Groupe;
   TYPE PteurG IS ACCESS Groupe;
   TYPE Groupe IS
      RECORD
         Nom        : Sport;
         Age        : Int4_12;
         Nb_Fille   : Integer;
         Nb_Garcon  : Integer;
         Age_Suiv   : PteurG;
         Sport_Suiv : PteurG;
      END RECORD;
   TYPE Tab_Sport IS ARRAY (Sport'RANGE) OF PteurG;
   TYPE Tab_Age IS ARRAY (Int4_12'RANGE) OF PteurG;


   --   PROCEDURE de gestion des groupes

   PROCEDURE Maj_Groupe (Psport: IN OUT PteurG;Page: IN OUT PteurG; Homme: Boolean; Age:Int4_12;S:Sport);
   PROCEDURE Groupe_Null (Psport: IN OUT PteurG ; Page: IN OUT PteurG) ;
   Procedure supprime_enfant_groupe (Psport: in out PteurG; Page: in out PteurG; Homme: boolean ; age:int4_12;S:sport);

   -- Procedure d'affichage

   PROCEDURE Affichage_all_Groupe (TabS: IN Tab_Sport);
   PROCEDURE affichage_groupe (Psport: IN PteurG);
   Procedure affichage_groupe_sport (Tabs : in tab_sport);
   PROCEDURE Affichage_Sport_Vide (Tabs: IN Tab_Sport);
   Procedure Groupe_manquant ( Tabs: Tab_Sport;taba: tab_age);

END Gestion_Sport;