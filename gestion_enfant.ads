WITH Saisie_Securise;
USE Saisie_Securise;

PACKAGE Gestion_Enfant IS

   TYPE Activite IS ARRAY (Sport) OF Boolean;
   TYPE Enfant IS
      RECORD
         Nom,
         Prenom   : Mot;
         H        : Boolean;                       -- H = homme;
         Age      : Int4_12;
         Fraterie : Natural  := 0;
         Tarif    : Float    := 0.0;
         A        : Activite := (OTHERS => False);
      END RECORD;
   TYPE Fiche;
   TYPE PteurF IS ACCESS Fiche;
   TYPE Fiche IS
      RECORD
         Val  : Enfant;
         Suiv : PteurF;
   END RECORD;

   -- gestion des enfants
         -- ajout
         procedure saisie_activite(A:  out activite; reussie: out boolean);
         PROCEDURE Saisie_Enfant (E:OUT Enfant; Enregistre: OUT Boolean;tete: PteurF);
         PROCEDURE Ajout_Enfant(Tete:IN OUT PteurF; E:Enfant) ;


         -- suppression
         PROCEDURE Suppression_Enfant(Tete:IN OUT PteurF;P:PteurF; E:OUT Enfant) ;


         -- affichage
         PROCEDURE Affichage_Enfant(E: Enfant);
         procedure affichage_all_enfant(tete:PteurF);

         -- recherche
         procedure recherche_enfant(tete:PteurF;P:out PteurF;trouve:out boolean);
         function recherche(N,P : mot; tete:PteurF )return PteurF;


   -- Gestion tarif
   Function nombre_sport (A:activite) return integer;
   FUNCTION Tarif(A:Activite;N:Natural) RETURN Float;
   FUNCTION Tarif_Tot(Tete:PteurF) RETURN Float;


   -- statistiques

         -- calcul du nombre d'enfant selon des critères
         Function Nb_enfant_total (tete:PteurF) return integer;
         FUNCTION Nb_Enfant_Pr_1_Sport_Donne (Tete: PteurF; S: Sport) RETURN Integer;
         FUNCTION Nb_Enfant_Age_Sport_Donne (Tete:PteurF; S: Sport; Age: Int4_12) RETURN Integer;
         Function Nb_sexe_age_sport_donne (tete:PteurF;homme:boolean; S: sport; age: int4_12) return integer;
         FUNCTION Nb_Enfant_1_Seul_Sport (Tete:PteurF) RETURN Integer;
         Function Nb_enfant_pr_1_age_1_sport (tete: PteurF;  Age: int4_12) return integer;
         FUNCTION Nb_Sexe_Pr_1_Sport_donne (Tete: PteurF; S: Sport; Homme: Boolean) RETURN Integer ;

         -- Calcul de la moyenne d'age selon des critères
         FUNCTION Moy_Age_Pr_1_Sport_donne (Tete: PteurF; S:Sport ) RETURN Float ;
         FUNCTION Moy_Age_Pr_1_Sport (Tete: PteurF ) RETURN Float ;
         FUNCTION Moy_age_total (Tete: PteurF ) RETURN Float ;




END Gestion_Enfant;