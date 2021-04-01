function [grad] = grad_uh(k, Numtri, uhk, Coorneu)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
% INPUT: - k : numéro du triangle (int)
%        - Numtri : liste de triangles 
%                   (3 numeros de sommets - matrice entiere Nbtri x 3)
%        - uhk : vecteur solution approchée 
%                   (- vecteur entier Nbpt)
% 
% OUTPUT : - grad : gradient de uhk sur le triangle k (vecteur de taille
%                   Nbpt)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

S = Numtri(k, :);                       % Sommets du triangle
aire = aire_tri(k, Coorneu, Numtri)     % Aire du triangle

Xa = Coorneu(S(1), :); Xb = Coorneu(S(2), :); Xc = Coorneu(S(3), :);
Ua = uhk(S(1)) ; Ub = uhk(S(2)) ; Uc = uhk(S(3));

grad = -0.5* (1/aire) * [(Xb(2) - Xc(2))*(Ua -Ub) + (Ub-Uc)*(Xb(2)-Xb(1)) ; ...
    (Xc(1) - Xb(1))*(Ua - Ub) + (Xa(1)-Xb(1))*(Ub-Uc) ];

end


