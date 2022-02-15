# import library source files
import numpy as np
import math

number_of_terms = 20
values = [0, np.pi/6, np.pi/4, np.pi/3, np.pi/2, 2*np.pi/3, np.pi, 2*np.pi, 0.429*np.pi, 0.683*np.pi]

# Taylor Series for sinx
print("\nThe Taylor Series for sinx is as follows: -")
sum = [0] * number_of_terms
for i in range(len(values)):
    print("\nTaylor Series for x[" + str(i+1) + "] = " + str(values[i]) + " is as follows: -")
    sum[0] = values[i]
    print("For term = 1, the sum is: " + str(sum[0]))
    for j in range(1, number_of_terms, 1):
        sum[j] = sum[j-1] + ((-1)**(j)/math.factorial(2 * j + 1))*(values[i]**(2 * j + 1))
        print("For term = " + str(j+1) + ", the sum is: " + str(sum[j]))
        if (round(sum[j-1],3) == round(sum[j-2],3)):
            break;

# Taylor Series for cosx
print("\nThe Taylor Series for cosx is as follows: -")
sum = [0] * number_of_terms
for i in range(len(values)):
    print("\nTaylor Series for x[" + str(i+1) + "] = " + str(values[i]) + " is as follows: -")
    sum[0] = 1
    print("For term = 1, the sum is: " + str(sum[0]))
    for j in range(1, number_of_terms, 1):
        sum[j] = sum[j-1] + ((-1)**(j)/math.factorial(2 * j))*(values[i]**(2 * j))
        print("For term = " + str(j+1) + ", the sum is: " + str(sum[j]))
        if (round(sum[j-1],3) == round(sum[j-2],3)):
            break;

# Taylor Series for tanx
print("\nThe Taylor Series for tanx is as follows: -")
sum = [0] * number_of_terms
for i in range(len(values)):
    print("\nTaylor Series for x[" + str(i+1) + "] = " + str(values[i]) + " is as follows: -")
    sum[0] = values[i]
    print("For term = 1, the sum is: " + str(sum[0]))
    for j in range(1, number_of_terms, 1):
        sum[j] = sum[j-1] + (((-1)**(j)/math.factorial(2 * j + 1))*(values[i]**(2 * j + 1))) / ((-1)**(j)/math.factorial(2 * j))*(values[i]**(2 * j))
        print("For term = " + str(j+1) + ", the sum is: " + str(sum[j]))
        if (round(sum[j-1],4) == round(sum[j-2],4)):
            break;
