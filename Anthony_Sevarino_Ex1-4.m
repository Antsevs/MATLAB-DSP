% Anthony Sevarino - Homework 1
% Exercise 1
% --------------------------------------

format short
x = 4; y = 3; z = 6;
fxyz = ((5*x*y + 6*x*z^2) - ((12*y^2*z^3)/(31*x*y*z)))/(9*x^3*y*z + x*y^4*z)

% --------------------------------------
% Exercise 2

x1 = 25 * pi/180; y1 = 2.34;
fxy = (2*sin(x1) + 3*cos(4*y1) + 5*sin(y1)*tan(3*x1))/(6*sin(x1)*cos(y1))

% --------------------------------------
% Exercise 3

x = 1.2; y = 2.3;
V1 = (3*cos(x)*sin(4*y)+e^(x*y))/log(x^2*y)
V2 = 5*tan(V1)*sin(5*x*y)*log10(x*V1)
V3 = (9*log(x*y*V1))/(15*log10(V1*V2))

% --------------------------------------
% Exercise 4

% add a period before * or / when arithmetic involves two matrices of same
% dimension
X = 0.2:0.2:1.0; Y = 2:2:10; Z = 1:2:10;
w = (X.*Y)./(4.*Z) + (3.*X.^2.*Y.^3)./(Z.^2) + (4.*exp(X))./(Y.*Z.*log(Z))
