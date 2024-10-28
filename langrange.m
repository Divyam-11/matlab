% Input known data points
x_values = input('Enter the x values as vector');
y_values = input('Enter the y values as vector');

n = length(x_values);
%Symbolic variable for constructing the polynomial
syms x;
L_poly = 0;
a_values = sym(zeros(1,n));

for i = 1:n
    a_i = 1;
    for j = 1:n
        if j ~= i
            a_i = a_i  * (x-x_values(j))/(x_values(i)-x_values(j));
        end
    end
    a_values(i) = a_i;
    L_poly = L_poly + a_i*y_values(i);
end
L_poly = simplify(L_poly);
fprintf("Simplified Langrange polynomial is : \n");
disp(L_poly);