WITH saisie_Securise,gestion_globale;
USE saisie_Securise,gestion_globale;

PACKAGE BODY Donnees IS

   PROCEDURE Donnees1(A: OUT Activite;N: OUT Natural) IS
   BEGIN
      A(Judo):=True;
      A(Tennis):=True;
      A(Natation):=False;
      A(Football):=True;
      A(Danse):=False;
      A(Rugby):=False;

      N:=3;

   END Donnees1;

procedure Donnees2 (TabS: in out tab_sport;TabA: in out Tab_age; tete:out PteurF) is
   E: enfant;
   begin


   E.Nom:="durand              ";
   E.Prenom   :="alexis              ";
   E.H        := true ;                     -- H = homme;
   E.Age      := 4;
   E.Fraterie := 0;
   E.Tarif    := 20.0;
    E.A (judo):= false;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= false;
   E.A (danse):= false;
   E.A (rugby):= false;
   Tete:= NEW Fiche'(E,NULL);
   Maj_Groupe_Enfant ( E,TabS,TabA) ;


----------------------enfant 2-------------------------------------------------------

   E.Nom:="vallee              ";
   E.Prenom   :="marine              ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 12;
   E.Fraterie := 0;
   E.Tarif    := 48.0;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= true;
   E.A (danse):= true;
   E.A (rugby):= true;
      Tete.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------enfant 3-----------------------------------------------------

   E.Nom:="yamato              ";
   E.Prenom   :="kira                ";
   E.H        := true  ;                    -- H = homme;
   E.Age      := 12;
   E.Fraterie := 2;
      E.Tarif    := 23.8;
   E.A (judo):= true;
   E.A (Tennis) := True;
   E.A (natation):= false;
   E.A (Football):= True;
   E.A (Danse):= False;
   E.A (rugby):= true;
   tete.suiv.suiv:= new fiche'(e,null);
       Maj_Groupe_Enfant (E,TabS,TabA) ;
---------------------------enfant 4-------------------------------------------------------

   E.Nom:="yamato              ";
   E.Prenom   :="asran               ";
   E.H        := true   ;                   -- H = homme;
   E.Age      := 10;
   E.Fraterie := 2;
   E.Tarif    := 27.0;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= false;
   E.A (danse):= false;
   E.A (rugby):= true;
tete.suiv.suiv.suiv:= new fiche'(e,null);
     Maj_Groupe_Enfant (E,TabS,TabA) ;
--------------------------------enfant 5-----------------------------------------------------

   E.Nom:="yamato              ";
   E.Prenom   :="setsuna             ";
   E.H        := true   ;                   -- H = homme;
   E.Age      := 8;
   E.Fraterie := 2;
   E.Tarif    := 37.4;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= true;
   E.A (danse):= true;
   E.A (rugby):= true;
tete.suiv.suiv.suiv.suiv:= new fiche'(e,null);
   Maj_Groupe_Enfant (E,TabS,TabA) ;
----------------------------------enfant 6---------------------------------------------------

   E.Nom:="clyne               ";
   E.Prenom   :="lacus               ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 6;
   E.Fraterie := 1;
   E.Tarif    := 5.4;
   E.A (judo):= false;
   E.A (tennis) := false;
   E.A (natation):= false;
   E.A (football):= false;
   E.A (danse):= true;
   E.A (rugby):= false;
tete.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
   Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------------------enfant 7-----------------------------------------------

   E.Nom:="clyne               ";
   E.Prenom   :="paul                ";
   E.H        := true   ;                   -- H = homme;
   E.Age      := 6;
   E.Fraterie := 1;
   E.Tarif    := 9.0;
   E.A (judo):= false;
   E.A (tennis) := false;
   E.A (natation):= false;
   E.A (football):= false;
   E.A (danse):=false;
   E.A (rugby):= true;
tete.suiv.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
   Maj_Groupe_Enfant (E,TabS,TabA) ;
-----------------------------------enfant 8------------------------------------------

   E.Nom:="talaron             ";
   E.Prenom   :="delphine            ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 9;
   E.Fraterie := 4;
   E.Tarif    := 21.5;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= true;
   E.A (danse):= true;
   E.A (rugby):= true;
   tete.suiv.suiv.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

------------------------------------enfant 9-----------------------------------------

   E.Nom:="talaron             ";
   E.Prenom   :="marion              ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 7;
   E.Fraterie := 4;
   E.Tarif    := 7.5;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= false;
   E.A (football):= false;
   E.A (danse):= true;
   E.A (rugby):= false;
   tete.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

---------------------------------------enfant 10--------------------------------------

   E.Nom:="talaron             ";
   E.Prenom   :="marine              ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 5;
   E.Fraterie := 4;
   E.Tarif    := 6.5;
  E.A (judo):= false;
   E.A (tennis) := false;
   E.A (natation):= false;
   E.A (football):= true;
   E.A (danse):= true;
   E.A (rugby):= true;
tete.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

---------------------------------------enfant 11--------------------------------------

   E.Nom:="talaron             ";
   E.Prenom   :="axel                ";
   E.H        := true   ;                   -- H = homme;
   E.Age      := 11;
   E.Fraterie := 4;
   E.Tarif    := 21.5;
   E.A (judo):= true;
   E.A (tennis) := true;
   E.A (natation):= true;
   E.A (football):= true;
   E.A (danse):= true;
   E.A (rugby):= true;
tete.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv.suiv:= new fiche'(e,null);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------------------------enfant 12---------------------------------

   E.Nom:="talaron             ";
   E.Prenom   :="gaylor              ";
   E.H        := true  ;                    -- H = homme;
   E.Age      := 5;
   E.Fraterie := 4;
   E.Tarif    := 10.0;
  E.A (judo):= false;
   E.A (tennis) :=true;
   E.A (natation):= true;
   E.A (football):= false;
   E.A (danse):= false;
   E.A (rugby):= true;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------------------------enfant 13---------------------------------

   E.Nom:="lemauff             ";
   E.Prenom   :="anais               ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 9;
   E.Fraterie := 2;
   E.Tarif    := 16.6;
  E.A (judo):= true;
   E.A (tennis) :=false;
   E.A (natation):= true;
   E.A (football):= false;
   E.A (danse):= true;
   E.A (rugby):= false;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.suiv:= NEW Fiche'(E,NULL);

      Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------------------------enfant 14---------------------------------

   E.Nom:="lemauff             ";
   E.Prenom   :="ines                ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 4;
   E.Fraterie := 2;
   E.Tarif    := 8.0;
   E.A (judo):= false;
   E.A (tennis) :=false;
   E.A (natation):= false;
   E.A (football):= false;
   E.A (danse):= false;
   E.A (rugby):= true;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

 --------------------------------------------enfant 15---------------------------------

   E.Nom:="provost             ";
   E.Prenom   :="jeanne              ";
   E.H        := false  ;                    -- H = homme;
   E.Age      := 10;
   E.Fraterie := 0;
   E.Tarif    := 15.0;
   E.A (judo):= false;
   E.A (tennis) :=true;
   E.A (natation):= false;
   E.A (football):= false;
   E.A (danse):= true;
   E.A (rugby):= false;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

 --------------------------------------------enfant 16---------------------------------

   E.Nom:="cailliaud           ";
   E.Prenom   :="alexandre           ";
   E.H        := true  ;                    -- H = homme;
   E.Age      := 12;
   E.Fraterie := 1;
   E.Tarif    := 6.3;
   E.A (judo):= false;
   E.A (tennis) :=false;
   E.A (natation):= false;
   E.A (football):= true;
   E.A (danse):= false;
   E.A (rugby):= false;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

--------------------------------------------enfant 17---------------------------------

   E.Nom:="cailliaud           ";
   E.Prenom   :="mickael             ";
   E.H        := true  ;                    -- H = homme;
   E.Age      := 11;
   E.Fraterie := 1;
   E.Tarif    := 18.9;
   E.A (judo):= false;
   E.A (tennis) :=false;
   E.A (natation):= true;
   E.A (football):= false;
   E.A (danse):= false;
   E.A (rugby):= true;
      Tete.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv.Suiv:= NEW Fiche'(E,NULL);
      Maj_Groupe_Enfant (E,TabS,TabA) ;

   END Donnees2;

   PROCEDURE Test_Ajout (Tabs:  IN OUT Tab_Sport ; Taba: IN OUT Tab_Age) IS
      begin
         Maj_Groupe (Tabs(Tennis),Taba(4),True,4,Tennis);
   Maj_Groupe (Tabs(Tennis),Taba(4),false,4,Tennis);
   Maj_Groupe (Tabs(Tennis),Taba(4),True,4,Tennis);
   Maj_Groupe (Tabs(natation),Taba(5),True,5,natation);
    Maj_Groupe (Tabs(rugby),Taba(4),True,4,rugby);

     Maj_Groupe (Tabs(Tennis),Taba(5),True,5,Tennis);
   Maj_Groupe (Tabs(Tennis),Taba(5),false,5,Tennis);
   Maj_Groupe (Tabs(Tennis),Taba(5),True,5,Tennis);
   Maj_Groupe (Tabs(Tennis),Taba(5),True,5,Tennis);

     Maj_Groupe (Tabs(rugby),Taba(4),True,4,rugby);
   Maj_Groupe (Tabs(rugby),Taba(4),false,4,rugby);
     Maj_Groupe (Tabs(danse),Taba(12),True,12,danse);
   Maj_Groupe (Tabs(danse),Taba(12),false,12,danse);
  Maj_Groupe (Tabs(natation),Taba(5),True,5,natation);
     Maj_Groupe (Tabs(rugby),Taba(8),True,8,rugby);
   Maj_Groupe (Tabs(rugby),Taba(8),false,8,rugby);

      Maj_Groupe (Tabs(Football),Taba(4),False,4,Football);
   END Test_Ajout;

END Donnees;

