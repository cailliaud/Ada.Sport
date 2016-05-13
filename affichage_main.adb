WITH Ada.Text_Io,Ada.
   Integer_Text_IO,Saisie_Securise,Ada.Float_Text_IO,
   Gestion_Globale;
USE Ada.Text_Io,Ada.
   Integer_Text_IO,Saisie_Securise,Ada.
   Float_Text_IO,Gestion_Globale;


PACKAGE BODY Affichage_Main IS

   PROCEDURE Titre_Main IS
   BEGIN
      Put_Line(
         "************************************************************************************************************************");
      New_Line;
      Put(
         "                                          _      _              _____                 __ ___        ");
      New_Line;
      Put(
         "                                         (_)    | |       /\   |  __ \   /\          /  \__ \       ");
      New_Line;
      Put(
         "                          _ __  _ __ ___  _  ___| |_     /  \  | |  | | /  \     _ _| () | ) |      ");
      New_Line;
      Put(
         "                         | '_ \| '__/ _ \| |/ _ \ __|   / /\ \ | |  | |/ /\ \   | '_ \__/ / /       ");
      New_Line;
      Put(
         "                         | |_) | | | (_) | |  __/ |_   / ____ \| |__| / ____ \  | | | |  / /_       ");
      New_Line;
      Put(
         "                         | .__/|_|  \___/| |\___|\__| /_/    \_\_____/_/    \_\ |_| |_| |____|      ");
      New_Line;
      Put(
         "                         | |            _/ |                                                        ");
      New_Line;
      Put(
         "                         |_|           |__/                                                         ");
      New_Line(2);
      Put_Line(
         "************************************************************************************************************************");
      New_Line(2);
      Put_Line ("Bienvenue dans : LE SERVICE DES SPORTS");
      New_Line(2);
      Put_Line(
         "************************************************************************************************************************");
      New_Line(2);
   END Titre_Main;

   PROCEDURE Menu_Principal IS
   BEGIN
      Put(
         "                     ______________________________________________________________________________ ");
      New_Line;
      Put(
         "                    |                       Menu principal : choix proposes                        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 1 : gestion des enfants                         |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 2 : visualisation globale                       |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 3 : statistiques                                |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 4 : Finance                                     |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 5 : exit                                        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line(2);

   END Menu_Principal ;

   PROCEDURE Menu_Enfant IS
   BEGIN
      Put(
         "                     ______________________________________________________________________________ ");
      New_Line;
      Put(
         "                    |                           Menu Enfant :  choix proposes                      |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 1 : Afficher l'ensemble des enfants                   |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 2 : Ajouter un enfant                                 |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 3 : Supprimer un enfant                               |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 4 : Modifier un enfant                                |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 5 : afficher un enfant                                |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                  tapez 6 : exit                                              |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line(2);

   END Menu_Enfant;

   PROCEDURE Menu_Stat IS
   BEGIN
      Put(
         "                     ______________________________________________________________________________ ");
      New_Line;
      Put(
         "                    |                      Menu statistiques : choix proposes                      |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 1 : nombres d'enfants pour un sport                                |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 2 : nombres d'enfants pour un sport et un age                      |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 3 : nombres d'enfants pour un sport, un age et pour un sexe        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 4 : nombres d'enfants pratiquant un seul sport                     |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 5 : nombre d'enfant pratiquant un seul sport en fonction d'un age  |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 6 : nombre de filles / garcons pour un sport                       |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 7 : moyenne d age des enfants pour un sport                        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 8 : moyenne d age des enfants pour un seul sport                   |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |     tapez 9 : nombre totale enfants                                          |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");

      New_Line;
      Put(
         "                    |     tapez * : moyenne des ages totale                                        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                            tapez $ : exit                                    |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line(2);

   END  Menu_Stat;

   PROCEDURE Menu_Visual IS
   BEGIN
      Put(
         "                     ______________________________________________________________________________ ");
      New_Line;
      Put(
         "                    |                 Menu visualisation : choix proposes                          |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |               tapez 1 : afficher tous les sports                             |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |               tapez 2 : afficher le sport desire                             |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |               tapez 3 : afficher les sports non pratiques                    |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |               tapez 4 : afficher les duo sports/age non pratiques            |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |               tapez 5 : exit                                                 |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line(2);
      New_Line;


   END  Menu_Visual;

   PROCEDURE Menu_Tarif IS
   BEGIN
      Put(
         "                     ______________________________________________________________________________ ");
      New_Line;
      Put(
         "                    |                            Menu Tarif : choix proposes                       |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 1 : tarif globale                               |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 2 : tarif d'un enfant                           |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line;
      Put(
         "                    |                                                                              |");
      New_Line;
      Put(
         "                    |                        tapez 3 : Exit                                        |");
      New_Line;
      Put(
         "                    |______________________________________________________________________________|");
      New_Line(2);
   END  Menu_Tarif;


   PROCEDURE Choix_Stat (
         Tete : IN     PteurF) IS
      Choix          : Character;
      S              : Sport;
      A              : Int4_12;
      H              : Boolean;
      Resultat_Int   : Integer;
      Resultat_Float : Float;
   BEGIN


      LOOP
         Menu_Stat;
         Put("Votre choix : ");
         Get(Choix);
         Skip_Line;
         New_Line(2);


         CASE Choix IS

            WHEN '1' =>
               Put_Line("veuillez saisir un sport :");
               Saisie_Sport(S);
               Resultat_Int:=Nb_Enfant_Pr_1_Sport_Donne (Tete,S);
               Put("Il y a :");
               Put(Resultat_Int,2);
               Put("qui font ");
               Put(Sport'Image(S));
               New_Line;
               Skip_Line;


            WHEN '2' =>
               Put_Line("veuillez saisir un sport :");
               Saisie_Sport(S);
               Saisie_Age(A);
               Resultat_Int:=Nb_Enfant_Age_Sport_Donne (Tete,S,A);
               Put(" il y a :");
               Put(Resultat_Int,2);
               Put("qui font");
               Put(Sport'Image(S));
               Put(" et qui ont ");
               Put(A,2);
               Put(" ans");
               New_Line;

               Skip_Line;


            WHEN '3' =>
               Put_Line("veuillez saisir un sport :");
               Saisie_Sport(S);
               Saisie_Age(A);
               Saisie_Homme(H);
               Resultat_Int:=Nb_Sexe_Age_Sport_Donne (Tete,H,S,A);
               Put(" il y a :");
               Put(Resultat_Int,2);
               IF H THEN
                  Put(" garcons ");
               ELSE
                  Put(" filles ");
               END IF;
               Put("qui font");
               Put(Sport'Image(S));
               Put(" et qui ont ");
               Put(A,2);
               Put(" ans");

               New_Line;
               Skip_Line;


            WHEN '4' =>
               Resultat_Int:=Nb_Enfant_1_Seul_Sport (Tete);
               Put("Voici le nombre d'enfants ne pratiquant qu'un seul sport: ");
               Put(Resultat_Int,2);
               New_Line;
               Skip_Line;


            WHEN '5' =>
               Saisie_Age(A);
               Resultat_Int:= Nb_Enfant_Pr_1_Age_1_Sport (Tete,A);
               Put("Voici le nombre d'enfants ages de");
               Put(A,2);
               Put(" ans, qui ne font qu'un seul sport : ");
               Put(Resultat_Int,2);
               New_Line;
               Skip_Line;


            WHEN '6' =>
               Put_Line("veuillez saisir un sport :");
               Saisie_Sport(S);
               Saisie_Homme(H);
               Resultat_Int:=Nb_Sexe_Pr_1_Sport_Donne(Tete,S,H)	;
               Put(" il y a :");
               Put(Resultat_Int,2);
               IF H THEN
                  Put(" garcons ");
               ELSE
                  Put(" filles ");
               END IF;
               Put("qui font");
               Put(Sport'Image(S));

               New_Line;
               Skip_Line;


            WHEN '7' =>
               Put_Line("veuillez saisir un sport :");
               Saisie_Sport(S);
               Resultat_Float:= Moy_Age_Pr_1_Sport_Donne (Tete,S);
               Put("voici la moyenne des ages pour ce sport : ");
               Put(Resultat_Float,Exp=>0,Aft => 2 );
               New_Line;
               Skip_Line;


            WHEN '8' =>
               Resultat_Float:=Moy_Age_Pr_1_Sport (Tete);
               Put("voici la moyenne d'age des enfants ne pratiquant qu'un sport : ");
               Put(Resultat_Float,Exp=>0,Aft => 2 );
               New_Line;
               Skip_Line;


            WHEN '9' =>
               Resultat_Int:=Nb_Enfant_Total(Tete);
               Put("Il y a au total :");
               Put(Resultat_Int,2);
               Put(" enfants dans notre base de donnees");
               New_Line;
               Skip_Line;


            WHEN '*' =>
               Resultat_Float:= Moy_Age_Total(Tete);
               Put("Voici la moyenne des ages de tous les enfants :");
               Put(Resultat_Float,Exp=>0,Aft => 2 );
               New_Line;
               Skip_Line;


            WHEN '$' =>
               EXIT  ;

            WHEN OTHERS =>
               Put_Line("non disponible, recommencez");
               New_Line;
               Skip_Line;

         END CASE;
      END LOOP;
   END Choix_Stat;

   PROCEDURE Choix_Gestion_Enfant (
         Tete : IN OUT PteurF;
         Tabs : IN OUT Tab_Sport;
         Taba : IN OUT Tab_Age) IS
      Choix   : Character;
      Reussie : Boolean   := False;
      Preturn : PteurF;



   BEGIN
      LOOP
         Menu_Enfant;
         Put("Votre choix : ");
         Get(Choix);
         Skip_Line;
         New_Line(2);
         CASE Choix IS
            WHEN '1' =>
               Affichage_All_Enfant(Tete);
               New_Line;
               Skip_Line;

            WHEN '2' =>
               Ajout_Complet(Tabs,Taba,Tete);
               New_Line;
               Skip_Line;


            WHEN '3' =>
               Suppression_Complet(Tabs,Taba,Tete);
               New_Line;
               Skip_Line;


            WHEN '4' =>
               Modification_Complet(Tete,Tabs,Taba);
               New_Line;
               Skip_Line;


            WHEN '5' =>
               Recherche_Enfant(Tete,Preturn,Reussie);
               IF Reussie THEN
                  Affichage_Enfant(Preturn.Val);
               ELSE
                  Put("l'enfant n'a pas ete trouve");
               END IF;
               Skip_Line;


            WHEN '6' =>
               EXIT;

            WHEN OTHERS =>
               Put_Line("non disponible, recommencez");
               New_Line;
               Skip_Line;

         END CASE;
      END LOOP;
      New_Line(2);
   END Choix_Gestion_Enfant;

   PROCEDURE Choix_Finance (
         Tete : IN     PteurF) IS
      Choix          : Character;
      Resultat_Float : Float;
      Preturn        : Pteurf;
      Reussie        : Boolean;
   BEGIN

      LOOP
         Menu_Tarif;
         Put("Votre choix : ");
         Get(Choix);
         Skip_Line;
         New_Line(2);


         CASE Choix IS

            WHEN '1' =>
               Resultat_Float:=Tarif_Tot(Tete);
               Put("voici le resultat :");
               Put(Resultat_Float);
               New_Line;
               Skip_Line;

            WHEN '2' =>
               Recherche_Enfant(Tete,Preturn,Reussie);
               IF Reussie THEN
                  Resultat_Float:=Preturn.Val.Tarif;
                  Put("voici le resultat :");
                  Put(Resultat_Float);
                  New_Line;
               ELSE
                  Put("l'enfant n'a pas ete trouve");
               END IF;
               Skip_Line;


            WHEN '3' =>
               EXIT;

            WHEN OTHERS =>
               Put_Line("non disponible, recommencez");
               New_Line;
               Skip_Line;

         END CASE;
      END LOOP;
   END Choix_Finance;

   PROCEDURE Choix_Visualisation (
         Tabs : Tab_Sport;
         Taba : Tab_Age) IS
      Choix : Character;
   BEGIN
      LOOP
         Menu_Visual;
         Put("Votre choix : ");
         Get(Choix);
         Skip_Line;
         New_Line(2);

         CASE Choix IS

            WHEN '1' =>
               Affichage_All_Groupe(Tabs);
               Skip_Line;

            WHEN '2' =>
               Affichage_Groupe_Sport(Tabs);
               Skip_Line;


            WHEN '3' =>
               Affichage_Sport_Vide(Tabs);
               Skip_Line;


            WHEN '4' =>
               Groupe_Manquant(Tabs,Taba);
               Skip_Line;


            WHEN '5' =>
               EXIT;

            WHEN OTHERS =>
               Put_Line("non disponible, recommencez");
               New_Line;
               Skip_Line;

         END CASE;
      END LOOP;
   END Choix_Visualisation;

END Affichage_Main;     