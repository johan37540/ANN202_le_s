%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% f.m :
% calcule de l'�valuation du second membre f
%
% SYNOPSIS w = f(v)
%
% INPUT - v : vecteur �valu� par f
%
% OUTPUT - w : r�sultat sous forme du flotant
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function w = f(v)
    x = v(1) ; y = v(2) ;
    z = 1 + pi^2 * cos(pi*x)^2 * sin(pi*y)^2 + pi^2 * sin(pi*x)^2 * cos(pi*y)^2 ;
    w = 2 * pi^2 * sin(pi*x) * cos(pi*y) * (2+z^(-1/2)) + (1/2) * pi^4 * z^(-3/2) * (cos(pi*x)*sin(pi*y)*sin(2*pi*x)*cos(2*pi*y) + sin(pi*x)*cos(pi*y)*cos(2*pi*x)*sin(2*pi*y));
end
