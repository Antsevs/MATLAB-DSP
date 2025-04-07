% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Exam
% Problem #1
%---------------------------------------
a = input('Please enter a vector over which the summation will be conducted: ');
t = input('Please enter time over which values of y are calculated for each a: ');
y = zeros(size(t));

for k=1:length(a)
  y = y + 5.*sin(2.*a(k)*t).*cos(6.*a(k)*t)
end

plot(t, y, 'Linewidth', 3), xlabel('time'), ylabel('y(x)'), title('Summation Series'), grid, axis('tight')

