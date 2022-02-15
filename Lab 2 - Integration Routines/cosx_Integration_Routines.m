clear
clc
close all

% Perform necessary initializations:
number_of_terms = 15; % Terms of the series.
a = 0; % Lower limit of integral.
b = 2*pi/3; % Upper limit of integral.
number_of_intervals = 10; % Number of integration intervals.
I = (0) * (number_of_terms); % Final array that adds the sums at each iteration.

fprintf("\nThe lower limit has the function value f = cos(%d) = %d.", a, f(a))
fprintf("\nThe upper limit has the function value f = cos(%d) = %d.", b, f(b))

fprintf("\n\nTrapezoidal Rule:")

% For each interval, get the function value. 
for n = 1:1:number_of_intervals
    h = (b-a)/n; % Size of each segment.
    s = 0.5*(f(a)+f(b)); % Initial summation of first and last segment.

    % Summation of all intervals.
    for i = 1:1:n-1
        s = s + f(a + i*h);
    end

    % Final obtained integral.
    I(n) = h * s;
    fprintf("\nFor term = %d, the sum is: %d", n, I(n)) % Display each iteration.
end

fig = figure(1);
set(fig, 'color', 'white')
grid on
xlabel('Number of Integration Values')
ylabel('y = ∫cosx')
title('Trapezoidal Rule')
hold on
plot(I,'-*',"LineWidth", 2)

fprintf("\n\nSimpson's 1/3 Rule:")

% For each interval, get the function value. 
for n = 1:1:number_of_intervals
    h = (b-a)/n; % Size of each segment.
    s = (f(a)+f(b)); % Initial summation of first and last segment.

    % Summation of all odd intervals.
    for i = 1:2:n-1
        s = s + 4*f(a + i*h);
    end

    % Summation of all even intervals.
    for i = 2:2:n-1
        s = s + 2*f(a + i*h);
    end

    % Final obtained integral.
    I(n) = h/3 * s;
    fprintf("\nFor term = %d, the sum is: %d", n, I(n)) % Display each iteration.
end

fig = figure(2);
set(fig, 'color', 'white')
grid on
xlabel('Number of Integration Values')
ylabel('y = ∫cosx')
title('Simpson 1/3 Rule')
hold on
plot(I,'-*',"LineWidth", 2)

fprintf("\n\nSimpson's 3/8 Rule:")

% For each interval, get the function value. 
for n = 1:1:number_of_intervals
    h = (b-a)/n; % Size of each segment.
    s = (f(a)+f(b)); % Initial summation of first and last segment.

    % Summation of all intervals:
    for i = 1:3:n-1
        s = s + 3*f(a + i*h);
    end

    for i = 2:3:n-1
        s = s + 3*f(a + i*h);
    end

    for i = 3:3:n-1
        s = s + 2*f(a + i*h);
    end

    % Final obtained integral.
    I(n) = (3 * h/8) * s;
    fprintf("\nFor term = %d, the sum is: %d", n, I(n)) % Display each iteration.
end

fig = figure(3);
set(fig, 'color', 'white')
grid on
xlabel('Number of Integration Values')
ylabel('y = ∫cosx')
title('Simpson 3/8 Rule')
hold on
plot(I,'-*',"LineWidth", 2)

% Taylor Summation Expression cos(x):
function temp = f(x)
number_of_terms = 15; % Terms of the series.
temp = 0; % Temporary variable to store the previous value of sum.
    for i = 0:number_of_terms-1
        temp = temp + (pwr(-1, i))*(pwr(x, (2 * i)))/ftl((2 * (i)));
    end
end

% Compute Factorial of a Number:
function fact = ftl(number)
fact = 1; % Initialize factorial variable.
    for temp = 1:number
        fact = fact * temp;
    end
end

% Compute Power Using Recursion:
function expo = pwr(base, a)
    if a~=0
        expo = base * pwr(base, a-1);
        return
    else
        expo = 1;
        return
    end    
end