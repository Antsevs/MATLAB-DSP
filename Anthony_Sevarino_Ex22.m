% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 22
%---------------------------------------
z = input('Enter the values of zeta as a vector: ');
x = input('Enter the values of x over which the summation series will be evaluated and plotted: ');
y = zeros(size(x));

for k=1:length(z)
  y = y + (1-(1/sqrt(1-z(k).^2)).*exp(-z(k).*x).*sin(sqrt(1-z(k).^2).*x+acos(z(k))))
end

plot(x, y, 'Linewidth', 3), xlabel('x'), ylabel('y(x)'), title('Summation Series'), grid, axis('tight')

0:pi/100:5*pi
[0.1 0.2 0.3]

