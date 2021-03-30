%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% u.m :
% calcule de l'�valuation de la solution exacte
%
% SYNOPSIS w = u(v)
%
% INPUT - v : vecteur �valu� par f
%
% OUTPUT - w : r�sultat sous forme du flotant
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function w = u(v)
    w = sin(pi*x)*sin(pi*y);
end
