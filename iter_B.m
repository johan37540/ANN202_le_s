function [BB] = iter_B (it, uh0, Nbpt)
% Initialisation
gradu = grad(uh0);
gradpsi = grad_psi(a);
BB = zeros(Nbpt, 1); 
BB

for i=1:it % Itération sur k 
    for a=1:Nbpt % Itération sur taille de la matrice
        

BB = dot(uh0, psi)

