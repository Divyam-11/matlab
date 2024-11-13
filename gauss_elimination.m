% Input A and B
A = input("Enter A (as a matrix): ");
B = input("Enter B (as a column vector): ");

n = length(B);
AB = [A B];  % Augmented matrix [A|B]

% Pivoting
for i = 1 : n-1
    [~, maxIndex] = max(abs(AB(i:n,i))); % Find the max element in the column
    maxIndex = maxIndex + i - 1;  % Adjust index to match the full range
    if maxIndex ~= i
        AB([i, maxIndex], :) = AB([maxIndex, i], :);  % Swap rows
    end
end

disp("Matrix after pivoting:");
disp(AB);

% Gaussian elimination
for i = 1 : n-1
    for j = i+1 : n
        factor = AB(j, i) / AB(i, i);  % Use AB(i,i) for the pivot
        AB(j, i:n+1) = AB(j, i:n+1) - factor * AB(i, i:n+1);  % Eliminate variable
    end
end

disp("Matrix after Gaussian elimination:");
disp(AB);

% Backward substitution
X = zeros(n, 1);  % Solution vector

X(n) = AB(n, end) / AB(n, n);  % Solve for the last variable

for i = n-1 : -1 : 1
    X(i) = (AB(i, end) - AB(i, i+1:n) * X(i+1:n)) / AB(i, i);
end

disp("Solution vector X:");
disp(X);
