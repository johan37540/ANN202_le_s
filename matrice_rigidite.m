%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% matrice_rigidite.m :
% calcule de la matrice de rigidité
%
% SYNOPSIS KK = matrice_rigidite()
%
% INPUT - Nbpt : nombre de sommets du maillage
%       - Nbtri : nombre de triangles du maillage
%       - Coorneu : coordonnées des sommets (Nbpt*2)
%       - Numtri : liste des sommets des triangles (Nbtri*3)
%       - Refneu : référence pour les arêtes à l'extérieur (Nbpt*1)
%
% OUTPUT - KK : la mtrice de rigidité
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [KK] = matrice_rigidite(Nbpt, Nbtri, Coorneu, Numtri, Refneu)
    KK = sparse(Nbpt, Nbpt);
    tri_adj = triadj(Nbpt, Nbtri, Numtri);
    
    % boucles sur les couples de sommets pas au bord
    for i = 1:Nbpt
    if (Refneu(i) == 0)
        I = Coorneu(i,:)
        for j = 1:Nbpt
        if (Refneu(j) == 0)
            J = Coorneu(j,:)
            
            % recherche des deux triangles en commun
            for k=1:Nbtri
            if (tri_adj(i, k) == 1 && tri_adj(j, k) == 1)
                
                % recherche du 3e sommet
                s = 1;
                while (s == i && s == j)
                    s  = s+1;
                end;
                S = Coorneu(s,:);
                
                % calcul des vecteurs normaux
                nI = [J(2)-K(2) , K(1)-J(1)];
                nJ = [I(2)-K(2) , K(1)-I(1)];
                
                % redressement pour qu'ils soient bien extérieurs
                if (dot(J-I, nI) <= 0)
                    nI = -nI;
                end;
                if (dot(I-J, nJ) <= 0)
                    nJ = -nJ;
                end;
                
                % calcul ajout de la contribution du triangle k
                KK(i, j) = KK(i, j) + dot(nI, nJ)/(4*aire_tri(k));
                
            end; end;
        end; end;
    end; end;
end