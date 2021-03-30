%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% u.m :
% calcule de l'évaluation de la solution exacte
%
% SYNOPSIS w = u(v)
%
% INPUT - v : vecteur évalué par f
%
% OUTPUT - w : résultat sous forme du flotant
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function w = u(v)
    w = sin(pi*x)*sin(pi*y);
end
