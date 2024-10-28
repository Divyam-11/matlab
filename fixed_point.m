tol = 0.001;
f = input("Enter the given function f(x) = ");
for i = 0:1:10
    if(f(i) * f(i+1) < 0)
        fprintf("root lies in [%f,%f] \n",i,i+1);
        break
    end
end
g = input("Enter Modified function g(x) = ");
syms x;
h = diff(g,x);

for j = i : 0.001: i+1
    if(abs(subs(h,j))) <= 1
    else
        fprintf("Function is not valid \n");
        break;
    end
end
d = input("Enter Initial Guess = ");

for i = 1 : 1  : 100
    c = g(d);
    fprintf(" Iteration (%d) : x(%d) = %f \n",i,i,c);
    
    if abs(c-d)< tol
        break
        
    end
    d = c;
end
fprintf("Total no. of iterations are %d \n root is %f",i,c);
