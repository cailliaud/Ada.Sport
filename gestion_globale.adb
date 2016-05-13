WITH Ada.Text_IO,Saisie_Securise,Ada.
   Float_Text_IO,ada.Integer_Text_IO;
USE Ada.
   Text_IO,Saisie_Securise,Ada.Float_Text_IO,ada.Integer_Text_IO;

PACKAGE BODY Gestion_Globale IS

   ------------------------------------------------------------------------------------------------
   --     Procedure qui met à jour la visualisation à partir d'un enfant
   ------------------------------------------------------------------------------------------------


   PROCEDURE Maj_Groupe_Enfant (
         E    :        Enfant;
         TabS : IN OUT Tab_Sport;
         TabA : IN OUT Tab_Age) IS
   BEGIN
      FOR I IN  E.A'RANGE LOOP
         IF E.A(I) THEN
            Maj_Groupe (Tabs(I),Taba(E.Age),E.H,E.Age,I);
         END IF;
      END LOOP;
   END Maj_Groupe_Enfant;

   ------------------------------------------------------------------------------------------------
   --     Procedure d'ajout complet d'un enfant avec actualisation de la visualisation
   ------------------------------------------------------------------------------------------------

   PROCEDURE Ajout_Complet (
         TabS : IN OUT Tab_Sport;
         TabA : IN OUT Tab_Age;
         Tete : IN OUT PteurF) IS
      Reussie : Boolean := False;
      E       : Enfant;
   BEGIN
      Saisie_Enfant(E,Reussie,Tete);
      IF Reussie THEN
         Ajout_Enfant(Tete,E);
         New_Line;
         Put_Line("Enfant bien ajoute");
         New_Line;
         Maj_Groupe_Enfant (E,TabS,TabA);
      ELSE
         Put_Line("L'ajout n'a pas aboutit");
      END IF;
   END Ajout_Complet;

   ------------------------------------------------------------------------------------------------
   --     Procedure de suppression d'un enfant avec actualisation de la visualisation
   ------------------------------------------------------------------------------------------------
   PROCEDURE Suppression_Complet (
         Tabs : IN OUT Tab_Sport;
         Taba : IN OUT Tab_Age;
         Tete : IN OUT PteurF) IS
      E       : Enfant;
      Ptrouve : PteurF;
      Trouve  : Boolean;
      choix: character;
   BEGIN
      Recherche_Enfant(Tete,Ptrouve,Trouve);
      IF Trouve THEN
	  Put("souhaitez vous vraiment supprimer ");Put(Ptrouve.val.prenom);Put(Ptrouve.val.nom);Put(" ? (o/n)");new_line;
	 Loop
	 Put("votre choix => "); get(choix);skip_line;
	  Case choix is
	  When 'o'|'O' =>
         Suppression_Enfant(Tete,Ptrouve, E) ;
         FOR I IN E.A'RANGE LOOP
            IF E.A(I) THEN
               Supprime_Enfant_Groupe(Tabs(I),Taba(E.Age),E.H,E.Age,I);
            END IF;
         END LOOP;
         put_line("l'enfant a bien ete supprime"); exit;
		 When 'n'|'N' => exit;
		 When others => Put("Erreur de saisie, Repondez par o/n"); new_line;
		 end case;
		 end loop;


      ELSE
         Put_Line(
            "Cette enfant n'est pas present dans la base de donnees");


      END IF;

   END Suppression_Complet;
   ------------------------------------------------------------------------------------------------
   --     Procedure de suppression d'un enfant avec actualisation de la visualisation
   ------------------------------------------------------------------------------------------------
   -------------------------------------------------------------------------------
   --                     Procedure Modification d'un enfant
   -------------------------------------------------------------------------------
   PROCEDURE Modification_Complet (
         Tete :        PteurF;
         Tabs : IN OUT Tab_Sport;
         Taba : IN OUT Tab_Age) IS
      Trouve,
      Reussie         : Boolean;
      P,
      Existe          : PteurF;
      Choix           : Character;
      Activite_Saisie : Activite;
      Prenom,
      Nom             : Mot;
   BEGIN
      Recherche_Enfant(Tete, P,Trouve);
      IF Trouve THEN
         Put_Line("Quelles informations souhaitez vous modifier ?");
         Put_Line(
            "1- Informations generales n'influencant pas le tarif hebdomadaire (prenom,nom)");
         Put_Line(
            "2- Informations concernant le nombre de freres et soeurs");
         Put_Line("3- Informations concernant les sports pratiques");
         Put_Line("4- Quitter");
         LOOP
            Put("Votre choix => ");
            Get(Choix);
            Skip_Line;

            CASE Choix IS
               WHEN '1' =>
                  Saisie_Infos(Prenom,Nom);
                  Existe:= Recherche(Nom,Prenom,Tete);
                  IF Existe = NULL THEN
                     P.Val.Prenom:=Prenom;
                     P.Val.Nom:=Nom;
                     put("modification réussie, vous pouvez deja allez consulter la fiche de : ");put(P.val.Prenom);put(" ");put(P.val.nom);new_line;
                  ELSE
                     Put_Line(
                        "Une personne existe deja avec ces informations");
                     Put_Line("modification abandonnee");
                  END IF;
                  New_Line;
                  EXIT;

               WHEN '2' =>
                  Put("Combien a-t'il de freres et soeurs =>");
                  Saisie_Natural(P.Val.Fraterie);
                  New_Line;
                  put(P.val.Prenom);put(" ");put(P.val.nom);put(" a desormais : ");put(P.val.Fraterie,2);put(" freres et soeurs.");new_line;
                  P.Val.Tarif:=Tarif(P.Val.A,P.Val.Fraterie);
                  Put(
                     "Le Tarif hebdomadaire de l'enfant s'elevera desormais a  => ");
                  Put(P.Val.Tarif,Exp => 0,Aft =>2);
                  New_Line;
                  EXIT;

               WHEN '3' =>
                  Saisie_Activite(Activite_Saisie,Reussie);
                  IF Reussie THEN
                     -- suppression des activités de base
                     FOR I IN P.Val.A'RANGE LOOP
                        IF P.Val.A(I) THEN
                           Supprime_Enfant_Groupe(Tabs(I),Taba(P.Val.Age),
                              P.Val.H,P.Val.Age,I);
                        END IF;
                     END LOOP;

                     -- ajout des modifs
                     P.Val.A:= Activite_Saisie;
                     P.Val.Tarif:=Tarif(P.Val.A,P.Val.Fraterie);
                     Maj_Groupe_Enfant (P.Val,TabS,TabA);
                     Put(
                        "Le Tarif hebdomadaire de l'enfant s'elevera desormais a  => ");
                     Put(P.Val.Tarif,Exp => 0,Aft =>2);



                  ELSE
                     Put_Line(
                        "Saisie incorrecte, les changements ne seront pas realises");
                  END IF;
                  New_Line;
                  EXIT;

               WHEN '4' =>
                  EXIT;
               WHEN OTHERS =>
                  Put_Line("Reponse incorrecte; recommencez ");
            END CASE;
         END LOOP;
      ELSE
         Put_Line(
            "Cette enfant n'est pas present dans notre base de donnees");
      END IF;

   END Modification_Complet;



END Gestion_Globale;

