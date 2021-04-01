function vect = scalaireA(uhk, Nbpt, Nbtri, Numtri, Refneu, Coorneu)
    tri_adj = triadj (Nbpt, Nbtri, Numtri);
    vect = zeros(Nbpt, 1)
    
    % boucle sur les points pas sur la frontière
    for a=1:Nbpt
    if (Refneu(a) == 0)
        
        % boucle sur les triangles adjacents à a
        for K=1:Nbtri
        if (tri_adj(a, K) == 1)
            
            % recherche des autres sommets du triangle K
            if (Numtri(K, 1) == a)
                A = Coorneu(Numtri(K, 2), :) ; B = Coorneu(Numtri(K, 3), :);
            end;
            if (Numtri(K, 2) == a)
                A = Coorneu(Numtri(K, 1), :) ; B = Coorneu(Numtri(K, 3), :);
            end;
            if (Numtri(K, 3) == a)
                A = Coorneu(Numtri(K, 2), :) ; B = Coorneu(Numtri(K, 1), :);
            end;
            
            % calcul de la normale au sedment face à a dans K
            n = [A(2) - B(2),  B(1) - A(1)];
            
            % redressement pour qu'il soit bien extérieur
                if (dot(A-Coorneu(a, :), n) <= 0)
                    n = -n;
                end;
            
            
            % calcul de la contribution de K
            vect(a) = vect(a) - (1/2) * dot(A(grad_uh(K, Numtri, uhk, Coorneu)), n);
        end; end;
    end; end;
end