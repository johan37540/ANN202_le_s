%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% A.m :
% calcule de l'�valuation de l'op�rateur A
%
% SYNOPSIS w = A(v)
%
% INPUT - v : vecteur �valu� par A
%
% OUTPUT - w : r�sultat sous forme de vecteur
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function w = A(v)
    w = (2 + 1/sqrt(1 + norm(v)^2))*v;
end
