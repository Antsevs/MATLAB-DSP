% Anthony Sevarino
% CET 3464 - Summer 2024
% Professor Massod Ejaz
% Matlab Homework 3
% Exercise 17
%---------------------------------------

inp = input('Enter a data vector required to be treated by one of the window functions: ');
windowfunc = input('Which window function do you want to use? (Hamming, Triangular, Hanning)', 's');
N = length(inp);
n = 0:N-1;

switch(windowfunc)

  case {'Hamming','hamming', 'HAMMING'}
    hm = 0.54-(0.46*cos((2*pi*n)/(N-1)));
    windowed_input = inp.*hm;
    subplot(2,1,1), plot(n, inp), xlabel('n'), ylabel('x(n))'), title('Original Signal'), grid, axis('tight')
    subplot(2,1,2), plot(n, windowed_input), xlabel('n'), ylabel('x(n)'), title('Window-Tested Signal'), grid, axis('tight')

  case {'Triangular','triangular', 'TRIANGULAR'}
    tri = 1-(abs(2*n-N+1)/(N-1));
    windowed_input = inp.*tri;
    subplot(2,1,1), plot(n, inp), xlabel('n'), ylabel('x(n))'), title('Original Signal'), grid, axis('tight')
    subplot(2,1,2), plot(n, windowed_input), xlabel('n'), ylabel('x(n)'), title('Window-Tested Signal'), grid, axis('tight')

  case {'Hanning','hanning', 'HANNING'}
    hn = 0.5-(0.5*cos((2*pi*n)/(N-1)));
    windowed_input = inp.*hn;
    subplot(2,1,1), plot(n, inp), xlabel('n'), ylabel('x(n))'), title('Original Signal'), grid, axis('tight')
    subplot(2,1,2), plot(n, windowed_input), xlabel('n'), ylabel('x(n)'), title('Window-Tested Signal'), grid, axis('tight')

  otherwise
    fprintf('Error: Invalid Window Function Provided')

end

% tested expression
% 2*cos(2000*pi*(0:1e-6:2.2e-3)) + 6*sin(6000*pi*(0:1e-6:2.2e-3))
