clc
f = input("Enter f(x)");
for i = 0:1:10
    a = i;
    b = i+1;
    if(f(a) * f(b)< 0)
        fprintf("Foudn A %f and B %f \n",a,b);
        break
        
    else
        a = a+1;
        b = b+1;
    end
    
end
tol = 0.1;


for i = 1:1:100
    m = (a+b)/2;
    
    if f(a) * f(m) < 0
        b = m;
    else
        a = m;
    end
    fprintf("In Interation i = %f , a =  %f , b = %f \n",i,a,b);
    if(abs(b-a) < tol)
        break
    end
    
end
fprintf("The Root is %f \n" , a)
