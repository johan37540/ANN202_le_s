%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% A.m :
% calcule de l'évaluation de l'opérateur A
%
% SYNOPSIS w = A(v)
%
% INPUT - v : vecteur évalué par A
%
% OUTPUT - w : résultat sous forme de vecteur
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function w = A(v)
    w = (2 + 1/sqrt(1 + norm(v)^2))*v;
end
