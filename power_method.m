A = input("Enter A");
tol = 1e-6;
maxIter = 100;
n = size(A,1);
X = ones(n,1);
lambda_old = 0;
for k = 1 : maxIter
    y = A * X;
    lambda = max(y);
    X = y/lambda;
    if abs(lambda - lambda_old) < tol
        break;
    end
    lambda_old = lambda;
end
lambda
X