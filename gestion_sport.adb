WITH Ada.
   Text_IO,Ada.
   Integer_Text_IO;
USE Ada.
   Text_IO,Ada.
   Integer_Text_IO;

   PACKAGE BODY Gestion_Sport IS
------------------------------------------------------------------------------------------------
--    Procedure qui met à jour un groupe en fonction de paramètres (sexe, sport, age)
------------------------------------------------------------------------------------------------

   PROCEDURE Maj_Groupe (Psport: IN OUT PteurG;Page: IN OUT PteurG; Homme: Boolean; Age:Int4_12;S:Sport) IS
      -- procedure permettant d'ajouter un garcon ou une fille au groupe créé en fonction du sexe
      PROCEDURE Esclave (Homme: Boolean; Nb_Garcon,Nb_Fille: in OUT Integer) IS
      BEGIN
         IF Homme THEN Nb_Garcon:=1; ELSE Nb_Fille:=1; END IF;
      END Esclave;

      -- procedure choisissant le bon pointeur d'age à mettre sur le groupe
      PROCEDURE CHoix_Page (Psport: IN OUT PteurG; Page : IN OUT PteurG;Homme: Boolean; S : Sport) IS
      BEGIN
         IF Page = NULL THEN
            Page:= Psport;
         ELSIF   sport'pos(Page.Nom)> sport'pos(S) THEN
            Psport.Sport_Suiv:= Page;
            Page := Psport;
         ELSIF Page.nom=s then
            IF Homme THEN Page.Nb_Garcon:=1+Page.Nb_Garcon;
            ELSE Page.Nb_Fille:=1+Page.Nb_Fille;
            END IF;
         ELSe
            Choix_Page (Psport, Page.Sport_Suiv,homme, S);
         END IF;
      END CHoix_Page;
      aux: PteurG;

   BEGIN
      IF Psport = NULL then
         Psport := NEW Groupe'(S,Age,0,0,NULL,NULL);
         Esclave(Homme,Psport.Nb_Garcon,Psport.Nb_Fille);
         CHoix_Page (Psport,Page,Homme,S) ;

      ELSIF Psport.Age = Age THEN
        IF Homme THEN Psport.Nb_Garcon:=1+Psport.Nb_Garcon;
            ELSE Psport.Nb_Fille:=1+Psport.Nb_Fille;
            END IF;

      ELSIF Psport. Age > Age THEN
         aux:=Psport;
         Psport := NEW Groupe'(S,Age,0,0,NULL,NULL);
         Psport.age_suiv := aux;

         Esclave(Homme,Psport.Nb_Garcon,Psport.Nb_Fille);
         CHoix_Page (Psport,Page,Homme,S) ;
      ELSE
         Maj_Groupe (Psport.age_suiv,Page,Homme,Age,S);
      END IF;



   END Maj_Groupe;

------------------------------------------------------------------------------------------------
--     Procedure supprimant un groupe si il devient null
------------------------------------------------------------------------------------------------
   PROCEDURE Groupe_Null (Psport: IN OUT PteurG ; Page: IN OUT PteurG) IS
   BEGIN
      IF Psport.Nb_Garcon = 0 AND Psport.Nb_Fille = 0 THEN
               Psport:=Psport.age_Suiv;
               Page:=Page.sport_Suiv;
            END IF;
   END Groupe_Null;

------------------------------------------------------------------------------------------------
--     Procedure supprimant le sport  d'un enfant
------------------------------------------------------------------------------------------------
   PROCEDURE Supprime_Enfant_Groupe (Psport: IN OUT PteurG; Page: IN OUT PteurG; Homme: Boolean ; Age:Int4_12;S:Sport) IS
   BEGIN
      IF Psport.Age = Age  THEN
         If Page.nom = s then
            IF Homme THEN
               Psport.Nb_Garcon:= Psport.Nb_Garcon -1 ;
            ELSE
               Psport.Nb_Fille:= Psport.Nb_Fille -1 ;
            END IF;
            Groupe_Null(Psport,Page);
         ELSE
            Supprime_Enfant_Groupe(Psport,Page.Sport_Suiv,Homme,Age,S);
         END IF;
      ELSE
         Supprime_Enfant_Groupe(Psport.Age_Suiv,Page,Homme,Age,S);
      END IF;
   END Supprime_Enfant_Groupe;

------------------------------------------------------------------------------------------------
--     Procedure affichant un groupe à partir de son pointeur sport
------------------------------------------------------------------------------------------------

      PROCEDURE affichage_groupe (Psport: IN PteurG) IS
      BEGIN
         IF Psport/=NULL THEN
            Put("Sport: ");Put(Sport'Image(Psport.Nom)); New_Line;
            Put("Age: "); Put(Psport.Age,2);New_Line;
            Put("Nombre de garcons: ");Put(Psport.Nb_Garcon,2);New_Line;
            Put("Nombre de filles: "); Put(Psport.Nb_Fille,2);New_Line;
            Put("Nombre d'enfants au total: "); Put((Psport.Nb_Garcon+Psport.Nb_Fille),2);New_Line(2);
            affichage_groupe (Psport.Age_Suiv);
         END IF;
      END affichage_groupe;
 ------------------------------------------------------------------------------------------------
--     Procedure affichant tous les groupes
------------------------------------------------------------------------------------------------
   PROCEDURE Affichage_all_Groupe(TabS: IN Tab_Sport) IS
   BEGIN
      FOR i in  Tabs'RANGE LOOP
         IF Tabs(I)/=NULL THEN
            affichage_groupe(Tabs(I));
             Put_Line("*********************************");
         END IF;
      END LOOP;
   END Affichage_all_Groupe;
 ------------------------------------------------------------------------------------------------
--     Procedure affichant les groupes d'un sport
------------------------------------------------------------------------------------------------
   PROCEDURE Affichage_Groupe_Sport (Tabs : IN Tab_Sport) IS
      S: Sport;
   BEGIN
      Put("Saisie le sport dont vous souhaitez voir les groupes => ");Saisie_sport(s);
      Put_line("Voici les resultats pour ce sport");
      Affichage_groupe(Tabs(S));
   END  Affichage_Groupe_Sport ;

 ------------------------------------------------------------------------------------------------
--     Procedure affichant les sports n'étant pas pratiqué
------------------------------------------------------------------------------------------------

   PROCEDURE Affichage_Sport_Vide (Tabs: IN Tab_Sport) IS
      cpt: integer:=0;
   BEGIN
      Put("Les sports suivants ne sons pas pratiques = ");
      FOR I IN Tabs'RANGE LOOP

         IF Tabs(I) = NULL THEN
            Put(Sport'Image(I));Put(",");
         ELSE
            cpt:=cpt+1;
         END IF;
      END LOOP;
      IF Cpt= 6 THEN
         Put("Aucun");
      END IF;
   END Affichage_Sport_Vide;

 ------------------------------------------------------------------------------------------------
--     Procedure affichant les groupes manquants
------------------------------------------------------------------------------------------------
   PROCEDURE Groupe_Manquant (Tabs: Tab_Sport;taba: tab_age) IS
      Aux: PteurG;
   BEGIN
      Put_line("Les Sports ayant un groupe manquant sont => ");
      FOR I IN Tabs'RANGE LOOP
         Put(sport'image(I));Put(":");
         aux:= Tabs(I);
         IF aux=NULL THEN Put("il manque tous les ages pour ce sport : 4,5,6,7,8,9,10,11,12");
         ELSE
            for j in taba'range loop
               IF Aux.age /= J THEN
                  Put(J);Put(",");
               ELSE
                  If aux.age_suiv /= null then
                     Aux:=Aux.age_Suiv;
                  END IF;
               END IF;
            END LOOP;
         END IF;
         new_line;
         Put_line("*****************************************");
         New_Line;
      END LOOP;
   END Groupe_Manquant;


END Gestion_Sport;