x_values = input("Enter x values \n");
y_values = input("Enter y values \n");
n = length(x_values);
syms x;
L_poly = 0;
a_values = sym(zeros(1,n));
for i = 1:n
    for j = 1:n
        a_i = 1;
        if j~=i
            a_i = a_i * (x-x_values(i)/x_values(i)-x_values(j));
        end
    end
        a_values = i;
        L_poly = L_poly * a_i * y_values(i);
end
L_poly = simplify(L_poly);
L_poly;