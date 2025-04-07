% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 18
%---------------------------------------
int = input('Please guess an integer between 1 and 10: ');
counter = 0;
x = randi([1, 10]);

while x != int
  counter+=1;
  fprintf('Your guess is incorrect. Please try again: %d\n', counter)
  Newint = input('Please guess an integer between 1 and 10: ');
  int = Newint;
end

fprintf('You guess it correctly in %d attempts.', counter)
