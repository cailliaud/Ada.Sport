WITH Ada.
   Text_IO,Ada.
   Float_Text_IO,Ada.
      Integer_Text_IO;
USE Ada.
   Text_IO,Ada.
   Float_Text_IO,Ada.
      Integer_Text_IO;

PACKAGE BODY Gestion_Enfant IS
-------------------------------------------------------------------------------
--                      Saisie des Activites d'un enfant
-------------------------------------------------------------------------------
   PROCEDURE Saisie_Activite(A:  OUT Activite; Reussie: OUT Boolean ) IS
      reponse: character;
   BEGIN
      new_line;
      Put_Line("Vous allez saisir les activites sportives que pratique l'enfant");
      Put_Line("Nous vous rappelons que l'enfant doit pratiquer au moins un sport");
      Put_line("Repondez par (o/n)");
      FOR I in sport'RANGE LOOP
        Loop
         Put(sport'image(I));Put(" : ");Get(Reponse);Skip_Line;
               CASE Reponse IS
                  WHEN 'o'|'O'=> A(I):=True; exit;
                  WHEN 'n'|'N'=>  A(I):=False ;  exit;
                  WHEN OTHERS => Put_Line("Reponse incorrecte; recommencez");
               END CASE;
            END LOOP;
      END LOOP;

      FOR I IN A'RANGE LOOP
         IF A(I) THEN reussie:=True; EXIT; END IF;
      END LOOP;

   END Saisie_Activite;

-------------------------------------------------------------------------------
--                      Saisie d'un enfant et de toutes ses informations
-------------------------------------------------------------------------------
   PROCEDURE Saisie_Enfant (E:OUT Enfant; Enregistre: OUT Boolean;tete : in PteurF) IS
      Reponse:Character;
      Reussie: Boolean;
      existe: pteurf;
   BEGIN
      Saisie_Infos(E.Prenom,E.Nom);
      Existe:= Recherche(E.Nom,E.Prenom,Tete);
      if existe = null then
      Saisie_Homme(E.H);
      Saisie_age(E.age);
      Put("Combien a-t'il de freres et soeurs =>");Saisie_Natural(E.Fraterie);
      LOOP
         Saisie_Activite(E.A,Reussie);
         IF Reussie  THEN enregistre:= true ; EXIT;
         ELSE
            Put_Line("L'enfant ne pratique aucun sport et ne pourra donc pas etre inscrit");
            Put_Line("Souhaitez vous recommencez la saisie de ses activites (o/n)");
            Put_Line("Un non entrainera l'arret de la procedure d'inscription");

            Put("Votre reponse (o/n) =>"); Get(Reponse);Skip_Line;
            CASE Reponse IS
                  WHEN 'o'|'O'=>null;
                  WHEN 'N'|'n'=>  enregistre:=false; exit;
                  WHEN OTHERS => Put_Line("Reponse incorrecte; recommencez (o/n)");
            END CASE;
         END IF;
      END LOOP;
      E.tarif:=Tarif(E.A,E.fraterie);
      Put("Le Tarif hebdomadaire de l'enfant s'elevera a => ");Put(E.tarif,Exp => 0,Aft =>2);
      ELSE
         Put_Line("l'enfant existe deja dans la base de donnees");
         enregistre:=false;
      END IF;

   END Saisie_ENfant;

-------------------------------------------------------------------------------
--    Procédure ajoutant un enfant à la file
-------------------------------------------------------------------------------
   PROCEDURE Ajout_Enfant(Tete: in out PteurF; E:Enfant) IS
   BEGIN
      IF tete=NULL THEN
         tete:=NEW Fiche'(E,NULL);
      ELSE
         Ajout_Enfant(tete.suiv,E);
      END IF;

   END Ajout_Enfant;
-------------------------------------------------------------------------------
--    Procédure supprimant un enfant
-------------------------------------------------------------------------------
   PROCEDURE suppression_enfant(Tete:in out PteurF;P:PteurF; E:OUT Enfant) IS
   BEGIN
      IF tete=P THEN
         E:= tete.Val;
         Tete:=Tete.Suiv;
      ELSE
         suppression_enfant(tete.suiv,P,E);
      END IF;

   END suppression_enfant;


-------------------------------------------------------------------------------
--   affichant les info d'un enfant
-------------------------------------------------------------------------------
   PROCEDURE Affichage_Enfant(E:enfant) IS
      choix: character;
   BEGIN

         Put_line("Informations generales :");
         Put("Prenom de l'enfant = ");Put(E.Prenom);new_line;
         Put("Nom de l'enfant = ");Put(E.Nom);New_Line;
         Put("Age de l'enfant = ");Put(E.age,2);Put(" ans");New_Line;
         Put("Sexe de l'enfant = ");
         IF E.H THEN Put("garcon"); ELSE Put("fille"); END IF;New_Line;
         Put("Taille de sa fraterie = ");Put(E.Fraterie,2);New_Line;
         Put_line("souhaitez vous savoir les sports qu'il pratique ? ");
         Put("Votre reponse (o/n) =>"); Get(Choix);Skip_Line;
         Loop
            CASE choix IS
               WHEN 'o'|'O'=>
                  Put_Line("Il pratique :");
                  FOR I IN E.A'RANGE LOOP
                     IF E.A(I) THEN Put(Sport'Image(I));Put(" , "); END IF;
               END LOOP;
               new_line;
                  exit;
                  WHEN 'N'|'n'=>   exit;
                  WHEN OTHERS => Put_Line("Reponse incorrecte; recommencez (o/n)");
            END CASE;
         end loop;



   END Affichage_enfant;
-------------------------------------------------------------------------------
--                      function recherche avec nom et prenom d'un enfant
-------------------------------------------------------------------------------

   function recherche(N,P : mot; tete:PteurF ) return PteurF is
	begin
	If tete = null then return (null);
	elsif tete.val.nom = N and then tete.val.prenom = P then return tete;
	else return (recherche(n,p,tete.suiv));
	end if;
	end recherche;



-------------------------------------------------------------------------------
--                        procedure recherche un enfant
-------------------------------------------------------------------------------
PROCEDURE Recherche_Enfant(Tete:PteurF;P:OUT PteurF;Trouve:OUT Boolean) IS
      Nom,Prenom:mot;
BEGIN

   Trouve := False;
   Saisie_Infos(Prenom,Nom);
   P:=Recherche(Nom,Prenom,Tete);
   IF P = NULL THEN Trouve := False;
   ELSE Trouve:= True;
   END IF;

END Recherche_Enfant;

-------------------------------------------------------------------------------
--                        procedure affichage tous les enfants
-------------------------------------------------------------------------------
PROCEDURE Affichage_All_Enfant(Tete:PteurF) IS
   Aux : PteurF :=Tete;
   i : integer := 1;
BEGIN
   WHILE Aux /= NULL LOOP
      Put(I,2);Put(" - ");Put(aux.Val.Prenom);Put(" ");Put(aux.Val.Nom);
      New_Line;
      I:=I+1;
      aux:=aux.suiv;
   END LOOP;


END Affichage_All_Enfant;





-------------------------------------------------------------------------------
--                            Calcul du Tarif
-------------------------------------------------------------------------------
   FUNCTION Tarif(A:Activite;N:Natural) RETURN Float IS
      Total: Float := 0.0;
      nb_sport: integer :=0;
   BEGIN
      IF A(judo) THEN Total:=Total+10.0; nb_sport:=nb_sport+1; end if;
      IF A(tennis) THEN Total:=Total+9.0; nb_sport:=nb_sport+1; END IF;
      IF A(natation) THEN Total:= Total + 11.0; Nb_Sport:=Nb_Sport+1; END IF;
      IF A(football) THEN Total:= Total + 7.0; Nb_Sport:=Nb_Sport+1; END IF;
      IF A(danse) THEN Total:= Total + 6.0; Nb_Sport:=Nb_Sport+1; END IF;
      IF A(Rugby) THEN Total:= Total + 10.0; Nb_Sport:=Nb_Sport+1; END IF;
      CASE N IS
         WHEN 0 => null;
         WHEN 1 => total:=0.9*total;
         WHEN 2 => total:= 0.8*total;
         WHEN 3 => total:= 0.6*total;
         WHEN OTHERS => total:= 0.5*total;

      end case;

      IF nb_sport>=3 THEN Total:= Total -5.0; END IF;
      return (total);

   END Tarif;

-------------------------------------------------------------------------------
--                      Fonction calculant le total des prix des enfants
-------------------------------------------------------------------------------
FUNCTION Tarif_Tot(Tete:PteurF) RETURN Float IS
BEGIN
   IF Tete=NULL THEN RETURN(0.0);
   ELSE
      RETURN (Tarif_Tot(Tete.Suiv)+Tete.Val.Tarif);
   END IF;

END Tarif_Tot;

-------------------------------------------------------------------------------
--                 Calcul le nombre de sport pratiqué par un enfant
-------------------------------------------------------------------------------
   FUNCTION Nombre_Sport (A:Activite) RETURN Integer IS
      cpt: integer:=0;
   BEGIN
      FOR I IN A'RANGE LOOP
         IF A(I) THEN Cpt:=Cpt+1;
         END IF;
      END LOOP;
      return (cpt);
   END Nombre_Sport;

-------------------------------------------------------------------------------
--                 Calcul le nombre total d'enfant
-------------------------------------------------------------------------------
   FUNCTION Nb_Enfant_Total (Tete:PteurF) RETURN Integer IS
   BEGIN
      IF Tete=NULL THEN RETURN (0);
      ELSE RETURN (Nb_Enfant_Total(Tete.Suiv)+1);
      END IF;

   END Nb_Enfant_Total;

-----------------------------------------------------------------------------------
--        function qui retourne le nbr d'enfants pour un sport donné
-----------------------------------------------------------------------------------
FUNCTION Nb_Enfant_Pr_1_Sport_donne (Tete: PteurF; S: Sport) RETURN Integer IS
BEGIN
   IF Tete= NULL then RETURN (0);
   ELSE
      IF Tete.Val.A(S) THEN RETURN (Nb_Enfant_Pr_1_Sport_donne(Tete.Suiv,S)+1);
      ELSE RETURN (Nb_Enfant_Pr_1_Sport_donne(Tete.Suiv,S));
      end if;
   END IF;
end Nb_enfant_pr_1_sport_donne;

-----------------------------------------------------------------------------------
--        function qui retourne le nbr d'enfants pour un sport donné et un age donné
-----------------------------------------------------------------------------------
FUNCTION Nb_Enfant_Age_Sport_Donne (Tete:PteurF; S: Sport; Age: Int4_12) RETURN Integer IS
BEGIN
   IF Tete= NULL THEN RETURN (0);
   ELSE
      IF Tete.Val.A(S) AND Tete.Val.Age= Age THEN RETURN ( Nb_Enfant_Age_Sport_Donne(Tete.Suiv,S,Age) + 1 );
      ELSE
         RETURN ( Nb_Enfant_Age_Sport_Donne(Tete.Suiv,S,Age));
      END IF;

   END IF;

END Nb_Enfant_Age_Sport_Donne ;

------------------------------------------------------------------------------------------------
--        function qui retourne le nbr d'enfants pour un sport donné, un age donné et un sexe
------------------------------------------------------------------------------------------------
FUNCTION Nb_Sexe_Age_Sport_Donne (Tete:PteurF;Homme:Boolean; S: Sport; Age: Int4_12) RETURN Integer IS
BEGIN
   IF Tete= NULL THEN RETURN (0);
   ELSE
      IF Tete.Val.A(S) AND Tete.Val.Age= Age and Tete.val.H=homme THEN RETURN ( Nb_Sexe_Age_Sport_Donne(Tete.Suiv,homme,S,Age) + 1 );
      ELSE
         RETURN ( Nb_Sexe_Age_Sport_Donne(Tete.Suiv,homme,S,Age));
      END IF;

   END IF;

END Nb_Sexe_Age_Sport_Donne;

-----------------------------------------------------------------------------------
--        function qui retourne le nbr d'enfants pratiquant un seul sport
-----------------------------------------------------------------------------------
FUNCTION Nb_Enfant_1_Seul_Sport (Tete:PteurF) RETURN Integer IS

BEGIN
     IF Tete= NULL THEN RETURN (0);
     ELSE
         IF Nombre_Sport(tete.val.A)=1  THEN RETURN (Nb_Enfant_1_Seul_Sport(Tete.Suiv) + 1);
         ELSE
            RETURN  (Nb_Enfant_1_Seul_Sport(Tete.Suiv));
         END IF;
     END IF;

END Nb_Enfant_1_Seul_Sport;


------------------------------------------------------------------------------------------
--    function qui retourne le nbr d'enfants pour  un âge donné  pratiquant un seul sport
------------------------------------------------------------------------------------------
FUNCTION Nb_Enfant_Pr_1_Age_1_Sport (Tete: PteurF;  Age: Int4_12) RETURN Integer IS

BEGIN
   IF Tete= NULL then RETURN (0);
   ELSE
      IF Nombre_Sport(tete.val.a)=1 and tete.val.age=age THEN RETURN (Nb_Enfant_Pr_1_age_1_Sport(Tete.Suiv,age)+1);
      ELSE RETURN (Nb_Enfant_Pr_1_age_1_Sport(Tete.Suiv,age));
      end if;
   END IF;

END Nb_Enfant_Pr_1_Age_1_Sport;


--------------------------------------------------------------------------------------------
--      function qui retourne le nbr fille/garçons pour un sport donné
-----------------------------------------------------------------------------------------
FUNCTION Nb_sexe_Pr_1_Sport_donne (Tete: PteurF; S: Sport; Homme: boolean) RETURN Integer IS
BEGIN
   IF Tete= NULL then RETURN (0);
   ELSE
      IF Tete.Val.A(S) and tete.val.H=Homme THEN RETURN (Nb_Sexe_Pr_1_Sport_donne(Tete.Suiv,S,homme)+1);
      ELSE RETURN (Nb_Sexe_Pr_1_Sport_donne(Tete.Suiv,S,homme));
      end if;
   END IF;
END Nb_Sexe_Pr_1_Sport_donne;


------------------------------------------------------------------------------------------------
--    function qui retourne la moyenne des age des enfants pratiquant un sport donné en paramètre
------------------------------------------------------------------------------------------------
FUNCTION Moy_Age_Pr_1_Sport_Donne (Tete: PteurF; S:Sport ) RETURN Float IS

   -- fonction esclave calculant la somme des age des enfants faisant le sport donné
   FUNCTION Esclave (Tete:PteurF; S:SPort) RETURN Integer is
   BEGIN
       IF Tete= NULL THEN RETURN (0);
       ELSE
          IF Tete.Val.A(S) THEN RETURN (Esclave(Tete.Suiv,S) + Tete.Val.Age);
          ELSE
            RETURN  (Esclave(Tete.Suiv,S));
          END IF;
       END IF;
   END Esclave;

   Nbenfant: Float;

BEGIN
   Nbenfant:=float(Nb_Enfant_Pr_1_Sport_donne (Tete,S) ) ;
   IF Nbenfant = 0.0 THEN RETURN (0.0);
   ELSE
      RETURN (Float(Esclave(Tete,S))/Nbenfant);
   END IF;


END Moy_Age_Pr_1_Sport_donne;

------------------------------------------------------------------------------------------------
--     function qui retourne la moyenne des age des enfants ne pratiquant qu'un seul sport
------------------------------------------------------------------------------------------------
FUNCTION Moy_Age_Pr_1_Sport (Tete: PteurF ) RETURN Float IS

   -- fonction esclave calculant la somme des ages des enfants ne pratiquant qu'un sport
   Function esclave (tete:PteurF) return integer is
   BEGIN
   IF Tete= NULL THEN RETURN (0);
   ELSE
         IF Nombre_Sport(tete.val.A)=1  THEN RETURN (esclave(Tete.Suiv) + Tete.Val.Age);
         ELSE
            RETURN  (esclave(Tete.Suiv));
         END IF;

   END IF;

   END Esclave;

   Nbenfant: float;
BEGIN
   Nbenfant:=Float(Nb_Enfant_1_Seul_Sport (Tete));
   IF Nbenfant = 0.0 THEN RETURN (0.0);
   ELSE
      RETURN (Float(Esclave(Tete))/Nbenfant);
   END IF ;

END Moy_Age_Pr_1_Sport;

------------------------------------------------------------------------------------------------
--     function qui retourne la moyenne des age des enfants ne pratiquant qu'un seul sport
------------------------------------------------------------------------------------------------
FUNCTION Moy_Age_Total (Tete: PteurF ) RETURN Float IS
   -- fonction esclave calculant la somme des ages des enfants
   Function esclave (tete:PteurF) return integer is
   BEGIN
   IF Tete= NULL THEN RETURN (0);
   ELSE
      RETURN (esclave(Tete.Suiv) + Tete.Val.Age);
   END IF;
   END Esclave;

   Nbenfant: float;

BEGIN
   Nbenfant:=Float(Nb_Enfant_total(Tete));
   IF Nbenfant = 0.0 THEN RETURN (0.0);
   ELSE
      RETURN (Float(Esclave(Tete))/Nbenfant);
   END IF ;


END Moy_Age_Total;


end gestion_enfant;
