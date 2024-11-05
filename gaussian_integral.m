f = input("Enter The Function \n");
a = input("Enter lower limit \n");
b = input("Enter upper limit \n");
if a == -1 && b == 1
    f_u = f;
else
    f_u = @(u)(f(0.5*(b-a)*u + 0.5 *(b+a))*0.5 * (b-a));
end
n = input("Enter the value on n : \n");
if n == 2
    integration = f_u(-1/sqrt(3)) + f_u(1/sqrt(3));
elseif n == 3
    integration = 5/9*f_u(-sqrt(3/5)) + 8/9*f_u(0) + 5/9*f_u(sqrt(3/5));
end
integration