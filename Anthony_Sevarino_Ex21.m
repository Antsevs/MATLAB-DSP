% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 21
%---------------------------------------
A = input('Enter a matrix: ');
sizeA = size(A);

for j=1:sizeA(1);
  for k=1:sizeA(2);
    if A(j,k) >= 0 & A(j,k) <=20
      B(j,k) = 4.*sind(A(j,k)).*cosd(3.*A(j,k));
    elseif A(j,k) > 20 & A(j,k) <=70
      B(j,k) = 5.*sind(6.*A(j,k)).*cosd(5.*A(j,k));
    else
      B(j,k) = 10.*sind(A(j,k));
    end
  end
end

disp('The new matrix is: ');
disp(B);

