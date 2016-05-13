

package saisie_securise is

Type sport is (judo,tennis,natation,football,danse,rugby) ;

Subtype int4_12 is integer range 4..12 ;

Subtype mot is string(1..20) ;

Procedure saisie_sport(S:out sport);
Procedure saisie_mot20(M: out Mot);
Procedure saisie_age(A: out int4_12);
Procedure saisie_infos(Prenom,Nom: out Mot);
Procedure saisie_homme(S: out boolean) ;
Procedure saisie_natural(N: out Natural);

end saisie_securise;