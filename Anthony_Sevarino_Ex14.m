% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 14
%---------------------------------------

function [x] = Anthony_Sevarino_Ex14(mag, ang_d)


  ang_r = ang_d * (pi/180);

  [f, y] = pol2cart(ang_r, mag);

  x = f + 1i * y;
end
