% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 2
%---------------------------------------
choice = input('Enter exercise number you wish to view, or type 1 if you would like to run each sequentially: ')
switch choice
  case 7
% Exercise 7
% --------------------------------------
    A = input('Enter a coefficient matrix A: ')
    c = input('Enter a constant vector c: ')
    x = A^-1*c
%---------------------------------------
  case 8
% Exercise 8
% --------------------------------------
    R = input('Enter values of some number of resistors in the form of a vector: ')
    x = sum(R)
    y = 1/sum(1./R)
    fprintf('\nIf all the resistors are connected in series, equivalent resistor will be %d and if all the resistors are connected in parallel, equivalent resistor will be %d', x, y)
% --------------------------------------
  case 9
% Exercise 9
% --------------------------------------
    m = input('Enter the coefficients A, B, and C for a quadratic equation as a vector: ')
    x1 = (-m(2)+sqrt((m(2)^2) - (4*m(1)*m(3))))/(2*m(1))
    x1Str = num2str(x1);
    x2 = (-m(2)-sqrt((m(2)^2) - (4*m(1)*m(3))))/(2*m(1))
    x2Str = num2str(x2);
    fprintf('\nRoots of the quadratic equation Ax^2+Bx+C are %s & %s', x1Str, x2Str)
% --------------------------------------
  case 10
% Exercise 10
% --------------------------------------
    fprintf('\nf_1(x)=2x^2cos(6x) \nf_2(x)=(10+2sin(2000pi(x)))sin(107000pi(x)) \n')
    x = input('Enter a vector x to evaluate and plot the above two equations: ')
    f1 = 2.*x.^2.*cos(6.*x)
    f2 = (10+2.*sin(2000.*pi.*x)).*sin(107000.*pi.*x)
    figure (1)
    plot(x,f1), xlabel('x'), ylabel('f_1(x)'), title('f_1(x)=2x^2cos(6x)'),grid, axis('tight')
    figure(2)
    plot(x,f2,'g'), xlabel('x'), ylabel('f_2(x)'), title('f_2(x)=10+2sin(2000\pix)*sin(107000\pix)'),grid, axis('tight')
%---------------------------------------
  case 11
% Exercise 11
% --------------------------------------
    x = input('Enter a vector x that represents the range (x-axis) over which plots will be created: ')
    z = [0.1 0.2 0.4 0.7 0.9]
    y1 = 1-(1/(sqrt(1-(z(1).^2)))).*e.^(-z(1).*x).*sin(sqrt(1-(z(1).^2)).*x+acos(z(1)))
    y2 = 1-(1/(sqrt(1-(z(2).^2)))).*e.^(-z(2).*x).*sin(sqrt(1-(z(2).^2)).*x+acos(z(2)))
    y3 = 1-(1/(sqrt(1-(z(3).^2)))).*e.^(-z(3).*x).*sin(sqrt(1-(z(3).^2)).*x+acos(z(3)))
    y4 = 1-(1/(sqrt(1-(z(4).^2)))).*e.^(-z(4).*x).*sin(sqrt(1-(z(4).^2)).*x+acos(z(4)))
    y5 = 1-(1/(sqrt(1-(z(5).^2)))).*e.^(-z(5).*x).*sin(sqrt(1-(z(5).^2)).*x+acos(z(5)))
    figure (3)
    plot(x, y1, x, y2, 'g', x, y3, 'm', x, y4, 'r', x, y5, 'b'), xlabel('x in radians'), ylabel('y(x)'),
      title('y=1-(1\sqt(1-\zeta^2))e^-^\zeta^xsin(\sqt(1-\zeta^2)x+cos^-^1x)'), grid, legend('\zeta = 0.1','\zeta = 0.2','\zeta = 0.4','\zeta = 0.7','\zeta = 0.9'),
      axis('tight')
%---------------------------------------
  case 12
% Exercise 12
% --------------------------------------
    x = input('Enter vector x against which functions will be plotted: ')
    z = [0.3 0.5 0.8]
    y1 = 1-(1/(sqrt(1-(z(1).^2)))).*e.^(-z(1).*x).*sin(sqrt(1-(z(1).^2)).*x+acos(z(1)))
    y2 = 1-(1/(sqrt(1-(z(2).^2)))).*e.^(-z(2).*x).*sin(sqrt(1-(z(2).^2)).*x+acos(z(2)))
    y3 = 1-(1/(sqrt(1-(z(3).^2)))).*e.^(-z(3).*x).*sin(sqrt(1-(z(3).^2)).*x+acos(z(3)))
    subplot(2,2,1), plot(x, y1), xlabel('x'), ylabel('y(x,\zeta_1)'), title('y(x,\zeta_1) vs x'), grid, axis('tight')
    subplot(2,2,2), plot(x, y2), xlabel('x'), ylabel('y(x,\zeta_2)'), title('y(x,\zeta_2) vs x'), grid, axis('tight')
    subplot(2,2,3), plot(x, y3), xlabel('x'), ylabel('y(x,\zeta_3)'), title('y(x,\zeta_3) vs x'), grid, axis('tight')
    subplot(2,2,4), plot(x, y1, x, y2, 'g', x, y3, 'r'), xlabel('x'), ylabel('y'), title('y(x,\zeta_1), y(x,\zeta_2), and y(x,\zeta_3) vs x'),
      grid, axis('tight'), legend('\zeta_1 = 0.3', '\zeta_2 = 0.5', '\zeta_3 = 0.8')


%*******************************************************************************************************************************************
%*******************************************************************************************************************************************
%BELOW IS THE CASE TO RUN ALL EXERCISES SEQUENTIALLY
%*******************************************************************************************************************************************
%*******************************************************************************************************************************************


  case 1
% All Exercises
% --------------------------------------
% Exercise 7
% --------------------------------------
    A = input('Enter a coefficient matrix A: ')
    c = input('Enter a constant vector c: ')
    x = A^-1*c
%---------------------------------------
% Exercise 8
% --------------------------------------
    R = input('Enter values of some number of resistors in the form of a vector: ')
    x = sum(R)
    y = 1/sum(1./R)
    fprintf('\nIf all the resistors are connected in series, equivalent resistor will be %d and if all the resistors are connected in parallel, equivalent resistor will be %d', x, y)
% --------------------------------------
% Exercise 9
% --------------------------------------
    m = input('Enter the coefficients A, B, and C for a quadratic equation as a vector: ')
    x1 = (-m(2)+sqrt((m(2)^2) - (4*m(1)*m(3))))/(2*m(1))
    x1Str = num2str(x1);
    x2 = (-m(2)-sqrt((m(2)^2) - (4*m(1)*m(3))))/(2*m(1))
    x2Str = num2str(x2);
    fprintf('\nRoots of the quadratic equation Ax^2+Bx+C are %s & %s', x1Str, x2Str)
% --------------------------------------
% Exercise 10
% --------------------------------------
    fprintf('\nf_1(x)=2x^2cos(6x) \nf_2(x)=(10+2sin(2000pi(x)))sin(107000pi(x)) \n')
    x = input('Enter a vector x to evaluate and plot the above two equations: ')
    f1 = 2.*x.^2.*cos(6.*x)
    f2 = (10+2.*sin(2000.*pi.*x)).*sin(107000.*pi.*x)
    figure (1)
    plot(x,f1), xlabel('x'), ylabel('f_1(x)'), title('f_1(x)=2x^2cos(6x)'),grid, axis('tight')
    figure(2)
    plot(x,f2,'g'), xlabel('x'), ylabel('f_2(x)'), title('f_2(x)=10+2sin(2000\pix)*sin(107000\pix)'),grid, axis('tight')
%---------------------------------------
% Exercise 11
% --------------------------------------
    x = input('Enter a vector x that represents the range (x-axis) over which plots will be created: ')
    z = [0.1 0.2 0.4 0.7 0.9]
    y1 = 1-(1/(sqrt(1-(z(1).^2)))).*e.^(-z(1).*x).*sin(sqrt(1-(z(1).^2)).*x+acos(z(1)))
    y2 = 1-(1/(sqrt(1-(z(2).^2)))).*e.^(-z(2).*x).*sin(sqrt(1-(z(2).^2)).*x+acos(z(2)))
    y3 = 1-(1/(sqrt(1-(z(3).^2)))).*e.^(-z(3).*x).*sin(sqrt(1-(z(3).^2)).*x+acos(z(3)))
    y4 = 1-(1/(sqrt(1-(z(4).^2)))).*e.^(-z(4).*x).*sin(sqrt(1-(z(4).^2)).*x+acos(z(4)))
    y5 = 1-(1/(sqrt(1-(z(5).^2)))).*e.^(-z(5).*x).*sin(sqrt(1-(z(5).^2)).*x+acos(z(5)))
    figure (3)
    plot(x, y1, x, y2, 'g', x, y3, 'm', x, y4, 'r', x, y5, 'b'), xlabel('x in radians'), ylabel('y(x)'),
      title('y=1-(1\sqt(1-\zeta^2))e^-^\zeta^xsin(\sqt(1-\zeta^2)x+cos^-^1x)'), grid, legend('\zeta = 0.1','\zeta = 0.2','\zeta = 0.4','\zeta = 0.7','\zeta = 0.9'),
      axis('tight')
%---------------------------------------
% Exercise 12
% --------------------------------------
    x = input('Enter vector x against which functions will be plotted: ')
    z = [0.3 0.5 0.8]
    y1 = 1-(1/(sqrt(1-(z(1).^2)))).*e.^(-z(1).*x).*sin(sqrt(1-(z(1).^2)).*x+acos(z(1)))
    y2 = 1-(1/(sqrt(1-(z(2).^2)))).*e.^(-z(2).*x).*sin(sqrt(1-(z(2).^2)).*x+acos(z(2)))
    y3 = 1-(1/(sqrt(1-(z(3).^2)))).*e.^(-z(3).*x).*sin(sqrt(1-(z(3).^2)).*x+acos(z(3)))
    subplot(2,2,1), plot(x, y1), xlabel('x'), ylabel('y(x,\zeta_1)'), title('y(x,\zeta_1) vs x'), grid, axis('tight')
    subplot(2,2,2), plot(x, y2), xlabel('x'), ylabel('y(x,\zeta_2)'), title('y(x,\zeta_2) vs x'), grid, axis('tight')
    subplot(2,2,3), plot(x, y3), xlabel('x'), ylabel('y(x,\zeta_3)'), title('y(x,\zeta_3) vs x'), grid, axis('tight')
    subplot(2,2,4), plot(x, y1, x, y2, 'g', x, y3, 'r'), xlabel('x'), ylabel('y'), title('y(x,\zeta_1), y(x,\zeta_2), and y(x,\zeta_3) vs x'),
      grid, axis('tight'), legend('\zeta_1 = 0.3', '\zeta_2 = 0.5', '\zeta_3 = 0.8')
end
