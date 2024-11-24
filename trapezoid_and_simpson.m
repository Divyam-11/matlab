% Define the function you want to integrate
f = input('Enter the function: ');
% Define the limits of integration
a = input('Enter the lower limit : ');
b = input('Enter the upper limit : ');
% Define the no of subintervals
n = input('Enter the no of sub-intervals : ');
h = (b-a)/n;

x = a:h:b
y = f(x)

sum_tarp = sum(y(2:end-1));
integral_value = (h/2)*(f(a) + 2*sum_tarp+ f(b));
fprintf("The value using trapezoidal rule is %f",integral_value);
integral_value = (h/3)*(y(1) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(end));

fprintf("The integral value using simpson %f",integral_value);