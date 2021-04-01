
% Maillage
nom_maillage = "carre_0,1.msh";
[Nbpt,Nbtri,Coorneu,Refneu,Numtri,Reftri,Nbaretes,Numaretes,Refaretes] = lecture_msh(nom_maillage);

alpha = 2;
L = 3;
Nbiter = 10;
uh0 = zeros(Nbpt, 0);
BB = iter_B(alpha, L, uh0, Nbpt,Nbtri, Coorneu, Numtri, Refneu, Nbiter);
affiche(BB,Numtri,Coorneu, "blabla");


