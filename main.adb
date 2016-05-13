WITH Gestion_Enfant,Affichage_Main,Gestion_Sport,Donnees,Ada.
   Text_IO;
USE Gestion_Enfant,Affichage_Main,Gestion_Sport,Donnees,Ada.
   Text_IO;

PROCEDURE Main IS
   Choix : Character;
   Tete  : PteurF;
   Tabs: Tab_Sport;
   Taba: Tab_Age;



BEGIN
   Donnees2(tabs,taba,tete);
   New_Line;
   Titre_Main;
   New_Line(3);

   LOOP
      Menu_principal;
         Put("Votre choix : ");
         Get(Choix);
         Skip_Line;
         New_Line(2);

      CASE Choix IS
         WHEN '1' =>
            Choix_Gestion_Enfant (Tete,Tabs,Taba);

         WHEN '2' =>
            Choix_Visualisation (Tabs,taba);

         WHEN '3' =>
            Choix_Stat(Tete);

         WHEN '4' =>
           Choix_Finance(Tete);

         WHEN '5' =>
            EXIT ;

         WHEN OTHERS =>
            NULL;

      END CASE;
   END LOOP;

   END Main;

