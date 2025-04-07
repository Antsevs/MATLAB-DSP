% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Exam
% Problem #2
%---------------------------------------
function [mag, phs] = Anthony_Sevarino_2(R, L, C, f)

  mag = (2*pi*f*(R/L))/sqrt(((1/(L*C))-4*pi^2*f^2)^2+(2*pi*f*(R/L))^2)

  phs = 90 - atand((2*pi*f*R*C)/(1-4*pi^2*f^2*L*C))

end

