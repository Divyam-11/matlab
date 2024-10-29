x_values = input("Enter X values as a vector");
y_values = input("Enter y values as a vector");

%number of data points
n = length(x_values);

h = x_values(2) - x_values(1);

syms x;



%Initialising the fowarard interpolation polynomial to y_0
N_poly = y_values(1);
diff_table = zeros(n,n);

% first column of different table is y_values
diff_table(:,1) = y_values(:);
% filling the forward differences
for j = 1: (n-1)
    for i = 1:(n-j)
        diff_table(i,j+1) = diff_table(i+1,j) - diff_table(i,j);
    end
end

disp('The forward and backward table is')
disp(diff_table);

p = (x-x_values(1))/h;
p_term = 1;

for i = 1:(n-1)
    p_term = p_term * p - (i-1);
    N_poly = N_poly + (p_term/factorial(i))*diff_table(i,i+1);
    
end

N_poly = simplify(N_poly);
disp('Simplified Forward polynomial is');
N_poly