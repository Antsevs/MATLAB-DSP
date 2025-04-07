% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 16
%---------------------------------------
function Anthony_Sevarino_Ex16
  format short

  Res = input('Enter resistor values as a vector: ');

  if(find(Res<0))
    fprintf('Resistors cannot be negative\n')
  else
    x = sum(Res);
    y = 1/sum(1./Res);

    fprintf('Series Equivalent Resistance: %f\n', x)
    fprintf('Parallel Equivalent Resistance: %f\n', y)

  end
end

