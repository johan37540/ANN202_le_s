function [FF] = scdTerme(alpha, L, Numtri, Coorneu, Nbpt, Nbtri)
FF = zeros(Nbpt, 1);
const = alpha / L^2;


for a=1:Nbpt                                  % On parcourt les sommets
    
    sum = 0;
    for k=1:Nbtri                             % On somme sur les triangle
        S = Numtri(k, :);
        aire = aire_tri(k, Coorneu, Numtri);  % aire |K|
        
        for a2=1:Nbtri
            if (triadj(a2,k) == 1)            % On somme sur V_k
                aretes = [S(1) S(2); S(2) S(3); S(3) S(1)]
                for p=1:3                     % On somme sur les arêtes
                    F = aretes(p, :);
                    xF = [Coorneu(F(1))  Coorneu(F(2))];
                    
                    if ( a==F(1) || a == F(2))
                        psi = 1/2;
                    else
                        psi = 0;
                    end%if
                                                          
                    sum = sum + f(xF) * psi;
                end%for
                
                sum = (aire/3) * sum;
            end%if
        end%for
    end%fir
    sum = const *sum;
    
    FF(a) = sum;
    
end%for


end


        
            
                
                
                    
                
                
        
    
    