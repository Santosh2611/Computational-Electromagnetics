clear
clc
close all

fprintf("\nThe Taylor Series for tanx is as follows: -")
% Given values of x, taken in radians:
values = [0, pi/6, pi/4, pi/3, pi/2, 2*pi/3, pi, 2*pi, 0.429*pi, 0.683*pi]; % Values of x

for store_values = 1:1:10 % Array to store indices of x values.    
    fprintf("\n\nTaylor Series for x[%d] = %d is as follows: -", store_values, values(store_values))
    
    % Perform necessary initializations.
    number_of_terms = 20; % Terms of the series.
    temp = 0; % Temporary variable to store the previous value of sum.
    sum = (0) * (number_of_terms); % Array to store sigma summation for each value of x.
    array = (0) * (number_of_terms); % Final array that adds the sums at each iteration.

    % For each number of terms, get the function value. 
    for i = 0:number_of_terms-1        
        % tan(x) = sin(x)/cos(x) using the series expansion.
        sum(i+1) = ((pwr(-1, i))*(pwr(values(store_values), (2 * i) + 1))/ftl((2 * (i)) + 1)) / ((pwr(-1, i))*(pwr(values(store_values), (2 * i)))/ftl(2 * (i)));
        
        temp = temp + sum(i+1); % Add the sum of previous iteration.
        array(i+1) = temp; % Save it to the final array of summation.
        fprintf("\nFor term = %d, the sum is: %d", i+1, array(i+1)) % Display each iteration.    
    end

    % Identify  the  number  of  terms  required to arrive at a convergent value.
    for i = 2:number_of_terms-1

        % Check whether the previous sum value is equal to the next.
        % Rounding off up to five decimal places for better approximation results.
        if (round(array(i),5) == round(array(i-1),5))
            fprintf("\nThe number of terms required to arrive at a convergent value for x[%d] = %d is %d.\n", store_values, values(store_values), i)
            break;        
        end
    
    end

    % A single plot contains graphs of five x values.    
    if store_values <= 5
        fig = figure(1);
        set(fig, 'color', 'white')
        grid on
        xlabel('Number of Terms')
        ylabel('Function Value')
        title('tan(x) taylor series for first five values of x')
        
        % For proper legend marking, string concatenation used.
        hold on
        plot(array,'-*',"LineWidth",2,'DisplayName',strcat('tan(',num2str(values(store_values)),')'))
    
    else
        fig = figure(2);
        set(fig, 'color', 'white')
        grid on
        xlabel('Number of Terms')
        ylabel('Function Value')
        title('tan(x) taylor series for next five values of x')
        
        % For proper legend marking, string concatenation used.
        hold on
        plot(array,'-*',"LineWidth",2,'DisplayName',strcat('tan(',num2str(values(store_values)),')'))
    
    end

    % Show the legend markings.
    legend('show')
end

% Compute Factorial of a Number:
function fact = ftl(number)
fact = 1; % Initialize factorial variable
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