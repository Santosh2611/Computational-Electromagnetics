number_of_terms = 15; a = 0; b = 2*pi/3; number_of_intervals = 10; I = (0) * (number_of_terms); 
fprintf("\n\nTrapezoidal Rule:")
for n = 1:1:number_of_intervals
    h = (b-a)/n; s = 0.5*(f(a)+f(b));
    for i = 1:1:n-1
        s = s + f(a + i*h);
    end
    I(n) = h * s; fprintf("\nFor term = %d, the sum is: %d", n, I(n))
end
fprintf("\n\nSimpson's 1/3 Rule:")
for n = 1:1:number_of_intervals
    h = (b-a)/n; s = (f(a)+f(b));
    for i = 1:2:n-1
        s = s + 4*f(a + i*h);
    end
    for i = 2:2:n-1
        s = s + 2*f(a + i*h);
    end
    I(n) = h/3 * s; fprintf("\nFor term = %d, the sum is: %d", n, I(n))
end
fprintf("\n\nSimpson's 3/8 Rule:")
for n = 1:1:number_of_intervals
    h = (b-a)/n; s = (f(a)+f(b));
    for i = 1:3:n-1
        s = s + 3*f(a + i*h);
    end
    for i = 2:3:n-1
        s = s + 3*f(a + i*h);
    end
    for i = 3:3:n-1
        s = s + 2*f(a + i*h);
    end
    I(n) = (3 * h/8) * s; fprintf("\nFor term = %d, the sum is: %d", n, I(n))
end
function temp = f(x)
number_of_terms = 15; temp = 0; 
    for i = 0:number_of_terms-1
        temp = temp + (pwr(-1, i))*(pwr(x, (2 * i) + 1))/ftl((2 * (i)) + 1);
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
        expo = base * pwr(base, a-1);
        return
    else
        expo = 1;
        return
    end    
end
