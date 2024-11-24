A = input("Enter Coefficient Matrix\n");
B = input("Enter B");
P = input("Enter Initial Guess");
n = input("Enter number of iterations")
N = length(B);
X = zeros(N,1);

for j = 1:n
    for i = 1:N
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
        P(i) = X(i);
    end
    
end
