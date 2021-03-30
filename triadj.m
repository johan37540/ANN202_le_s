function [triadj] = triadj (Nbpt, Nbtri, Numtri)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INPUT: - Nbpt: nbre de sommets (int)
%        - Nbtri: nombre de triangles (int)
%        - Numtri : liste de triangles 
%                   (3 numeros de sommets - matrice entiere Nbtri x 3)
% 
% OUTPUT: - triadj: matrice nbpt x Nbtri avec 1 si le triangle est adjacent
%                  au sommet
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

triadj = zeros(Nbpt, Nbtri);
for a=1:Nbpt % On parcourt les sommets
    for k=1:Nbtri % On parcourt les triangles
        S = Numtri(k, :);
        
        for j=1:3
            if a==S(j)
                triadj(a, k) = 1;
            end
        end
    end
end
end


            
