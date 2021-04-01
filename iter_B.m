function [BB] = iter_B (alpha, L, it, uh0, Nbpt,Nbtri, Coorneu, Numtri, Refneu, Nbiter)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Calcul de B^(k-1) itéré Nbiter fois
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialisation
BB = zeros(Nbpt, 1); 
KK = matrice_rigidite(Nbpt, Nbtri, Coorneu, Numtri, Refneu);
uhk = uh0;

BB = KK*uhk - (alpha / L^2)* scalaireA();  % Pour k=1

for k=1:Nbiter                             % Iteration sur les k
   uhk = KK\BB;
   BB = KK*uhk - (alpha / L^2)* scalaireA();
end

BB = scdTerme(alpha, L, Numtri, Coorneu, Nbpt, Nbtri) + BB;
end