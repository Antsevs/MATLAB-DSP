% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 20
%---------------------------------------
x = input('Enter a vector x that represents the range (x-axis) over which plots will be created: ');
z = [0.1 0.2 0.4 0.7 0.9];

for i = 1:1:5
  y(i, :) = 1-(1/(sqrt(1-(z(i).^2)))).*e.^(-z(i).*x).*sin(sqrt(1-(z(i).^2)).*x+acos(z(i)))
end
  figure (1)
  plot(x, y(1, :), x, y(2, :), 'g', x, y(3, :), 'm', x, y(4, :), 'r', x, y(5, :), 'b'), xlabel('x in radians'), ylabel('y(x)'),
    title('y=1-(1\sqt(1-\zeta^2))e^-^\zeta^xsin(\sqt(1-\zeta^2)x+cos^-^1x)'), grid, legend('\zeta = 0.1','\zeta = 0.2','\zeta = 0.4','\zeta = 0.7','\zeta = 0.9'),
    axis('tight')
