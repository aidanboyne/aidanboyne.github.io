%Golden Ratio Line Search Minimization
%To minimize a different function, change all instances of f_lam and f_mu
%to desired function

iterations = 4;
alfa = (sqrt(5)-1)/2;

%starting intervals
a=0;
b=2;
lambda = a + (1-alfa)*(b-a);
mu = a + alfa*(b-a);

%initial evaluation (iteration 1)
f_lam = 1-lambda*exp(-lambda);
f_mu = 1-mu*exp(-mu);

%algorithm
for i=1:(iterations-1)
    if f_lam >= f_mu
        a = lambda;
        lambda = mu;
        mu = a + alfa*(b-a);
        f_lam = f_mu;
        f_mu = 1-mu*exp(-mu);
    else
        b = mu;
        mu = lambda;
        lambda = a + (1-alfa)*(b-a);
        f_mu = f_lam;
        f_lam = 1-lambda*exp(-lambda);
    end        
end

%interval of uncertainty
disp(['bounds: ', num2str(a), ', ',num2str(b)])
