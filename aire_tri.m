function [Aire]  = aire_tri(k, Coorneu, Numtri)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT : - A? B? C sommets du triangle k 
%         - Coorneu :tableau des coordonées des sommets
%         - Numtri : liste de triangles 
%                   (3 numeros de sommets - matrice entiere Nbtri x 3)
%
% OUTPUT - Aire: aire du triangle k
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = Numtri(k,1);
B = Numtri(k,2);
C = Numtri(k,3);

xa = Coorneu(A,1); ya = Coorneu(A,2);
xb = Coorneu(B,1); yb = Coorneu(B,2);
xc = Coorneu(C,1); yc = Coorneu(C,2);

Aire = 0.5 * abs(xa*yc - xa*yb + xb * ya - xb*yc + xc*yb - xc*ya);