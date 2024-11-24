A = input("Enter Coefficient Matrix\n");
B = input("Enter B");
P = input("Enter Initial Guess");
N = length(B);
X = zeros(n,1);

for j = 1:n
    for i = 1:n
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
    end
    P = X;
end
