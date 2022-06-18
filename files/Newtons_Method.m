%Newton's Method

%Function f(x) to be minimized and initial guess
syms x
f = sqrt(x^2+1);
lambda = 1; %change as needed
iterations = 10;
stopc = 0.0001; %accuracy of minimization desired (be careful w/ compute time)

%Derivatives needed
df = diff(f);
d2f = diff(df);

%Iterative solution of Taylor Approximation
for i=1:iterations
     x = lambda;
     lambdak = (lambda - (subs(df)/subs(d2f)));
     if (abs(lambda-lambdak)) <= stopc
         break
     else
         lambda = lambdak;
     end
end

disp(lambda);
disp(['Necessary iterations: ', num2str(i)]);

