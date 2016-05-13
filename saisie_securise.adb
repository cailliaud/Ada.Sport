WITH Ada.Characters.Handling,Ada.
   Text_IO,Ada.
      Integer_Text_IO;
USE Ada.Characters.Handling,Ada.Text_IO,Ada.
   Integer_Text_IO;

PACKAGE BODY Saisie_Securise IS

-------------------------------------------------------------------------------
--                      Saisie d'un sport
-------------------------------------------------------------------------------
   PROCEDURE Saisie_Sport(S:OUT Sport) IS
      k: Integer;
      s1: string (1..20);
   BEGIN
      Get_Line(S1,K);
      S:=Sport'value(S1(1..K));

   END Saisie_Sport;

-------------------------------------------------------------------------------
--                      Saisie d'un Mot de taille 20 caractères
-------------------------------------------------------------------------------
   PROCEDURE Saisie_Mot20(M: OUT Mot) IS
      Test_Nom : Boolean := True;
      S        : Mot     := (OTHERS => ' ');
      K        : Integer;
   BEGIN
      -- Saisie du nom
      LOOP
         Test_Nom:= True;
         Put("Saisissez (maximum 20 caracteres) =>");

         Get_Line(S,K);
		 -- skip_line; sert à vider le chariot lorsque la personne met plus de 20 characteres.


         M:=(S(1..20));

         FOR I IN M'RANGE LOOP

            CASE M(I) IS
               WHEN 'A'..'Z' =>
                  M(I) := To_Lower(M(I));
               WHEN 'a'..'z' =>
                  NULL;
               WHEN ' ' =>
                  NULL;
               WHEN OTHERS =>
                  Put_Line("Erreur de saisie, caracteres speciaux et chiffres non toleres");
                  Put_Line("touche ENTREE pour ressaisir");
                  skip_line;
                  Test_Nom:= False;
                  EXIT;

            END CASE;


         END LOOP;


         EXIT WHEN Test_Nom;


      END LOOP;
   END Saisie_Mot20;

-------------------------------------------------------------------------------
--                      Saisie d'un age d'enfant compris entre 4 et 12 ans
-------------------------------------------------------------------------------
   PROCEDURE Saisie_Age(A: OUT Int4_12) IS
   BEGIN
      Put("Quel est l'age de l'enfant ( entre 4 et 12 ans) =>");
      LOOP
         begin
            Get(A); Skip_Line; exit;
         EXCEPTION

            WHEN Data_Error => Skip_Line; Put_Line("erreur de saisie (pas de caracteres), recommencez => ");
            When constraint_error => skip_line; put("erreur de saisie , recommencer => ");
         end;
      end loop;


   END Saisie_Age;

-------------------------------------------------------------------------------
--                      Saisie du Prenom et du Nom de l'enfant
-------------------------------------------------------------------------------
      PROCEDURE Saisie_Infos(Prenom,Nom: OUT Mot) IS
      BEGIN
      Put_Line("Vous allez dans un premier temps saisir le prenom de l'enfant");
      Saisie_Mot20(Prenom);
      New_Line;
      Put_Line("Vous allez dans un deuxieme temps saisir le nom  de l'enfant");
      Saisie_Mot20(Nom);
      New_Line;
      END Saisie_Infos;

-------------------------------------------------------------------------------
--                      Saisie d'un entier naturel (utilisable pour nbr frere/soeurs)
-------------------------------------------------------------------------------

      PROCEDURE Saisie_Natural(N: OUT Natural) IS
      BEGIN
         LOOP
            begin
            Get(N); Skip_Line;EXIT;
            EXCEPTION
                  WHEN Data_Error => Skip_Line; Put_Line("erreur de saisie, recommencez => ");
                  When constraint_error => skip_line; put("erreur de saisie, recommencer => ");
            end;
         end loop;
      END Saisie_Natural;

-------------------------------------------------------------------------------
--                      Saisie du sexe de l'enfant
-------------------------------------------------------------------------------
Procedure saisie_homme(S: out boolean) is
reponse:character;
BEGIN
Loop
        Put("Quel est le sexe de l'enfant (H/F) =>"); get(reponse); skip_line;
               CASE Reponse IS
                  WHEN 'h'|'H'=> S:=True; exit;
                  WHEN 'f'|'F'=>  S:=False ;  exit;
                  WHEN OTHERS => Put_Line("Reponse incorrecte; recommencez (H/F)");
               END CASE;
   END LOOP;
END Saisie_Homme;

-------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------

END Saisie_Securise;

