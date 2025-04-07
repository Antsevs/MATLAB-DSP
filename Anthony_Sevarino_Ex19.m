% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 19
%---------------------------------------
num = input('Enter the number for which you want to create the multiplication table: ');
ceiling = input('Enter the number up to which multiplication table is required: ');

for i = 1: 1: ceiling
  soln = num * i;
  fprintf('%d X %d = %d\n', num, i, soln)
end
