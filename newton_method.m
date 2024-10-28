f = input("Enter Function = ");
syms x;
g = diff(f,x);
tol = 0.0001;
for i = -10:1:10
    if(f(i)*f(i+1)< 0)
        fprintf("\n Root of the equation lies in the interval [%d,%d] \n",i,i+1);
        break;
    end
end
if f(i) < f(i+1)
    d = i;
else
    d = i+1;
    
end
for i =  1:1:100
    a = d - (f(d)/subs(g,d));
    fprintf("Iteration (%d) : x(%d) = %f \n",i,i,a);
    if(abs(f(a))< tol)
        break;
    end
    d = a;
    
end
fprintf("The root is %f & no. of iterations are %d \n",a,i);

