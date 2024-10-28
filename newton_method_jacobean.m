% user input for the number of variables and equations
n_vars = input("Enter the number of variables");
n_eqns = input("Enter the number of equations");

%Dynamically creating symbolic variables
vars = sym('x',[1 n_vars]);
% Input the equations from the user
f = sym('f',[1 n_eqns]);
for i = 1 : n_eqns
    fun = input(['Equation',num2str(i),':'],'s');
    f(i) = str2sym(fun);
end

%Initial guess
x = zeros(1,n_vars);
for i = 1 : n_vars
    x(i) = input(['Enter the initial guess of variables x',num2str(i),': ']);
    
    
end

e = 1e-8;
% Compute the Jacobian matrix
J = jacobian(f,vars);

for i = 1:100
    % Evalute the function and Jacobian at the current value of x
    F = double(subs(f,vars,num2cell(x)));
    J_eval = double(subs(J,vars,num2cell(x)));
    y = -inv(J_eval) * F';
    x = x + y';
    if norm(y) < e
        break;
    end
    
end
fprintf("\n The Solution is : ");
disp(x);