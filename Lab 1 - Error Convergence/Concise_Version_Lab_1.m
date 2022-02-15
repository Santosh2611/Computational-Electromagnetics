values = [0, pi/6, pi/4, pi/3, pi/2, 2*pi/3, pi, 2*pi, 0.429*pi, 0.683*pi];
for store_values = 1:1:10   
    fprintf("\n\nTaylor Series for x[%d] = %d is as follows: -", store_values, values(store_values))    
    number_of_terms = 20; temp = 0; sum = (0) * (number_of_terms); array = (0) * (number_of_terms);
    for i = 0:number_of_terms-1               
        sum(i+1) = (pwr(-1, i))*(pwr(values(store_values), (2 * i) + 1))/ftl((2 * (i)) + 1);       
        temp = temp + sum(i+1); array(i+1) = temp;
        fprintf("\nFor term = %d, the sum is: %d", i+1, array(i+1))  
    end
    for i = 2:number_of_terms-1             
        if (round(array(i),5) == round(array(i-1),5))
            fprintf("\nThe number of terms required to arrive at a convergent value for x[%d] = %d is %d.\n", store_values, values(store_values), i)
            break;        
        end 
    end  
end
function fact = ftl(number)
fact = 1;
    for temp = 1:number
        fact = fact * temp;
    end
end
function expo = pwr(base, a)
    if a~=0
        expo = base * pwr(base, a-1); return
    else
        expo = 1; return
    end    
end
