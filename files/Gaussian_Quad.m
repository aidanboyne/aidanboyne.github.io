%%Basic Gaussian Quadrature

%enter bounds and function here
x = [0,(pi/4)]; %endpoints
f = @(x) (cos(x))^2;


%n=2
% r = [0.5773502692, -0.5773502692];
% c = [1,1];

%n=3
r = [0.7745966692,0,-0.7745966692];
c = [(5/9),(8/9),(5/9)];


%Quadrature calculation
a = x(1);
b = x(2);
insum = 0;

for i = 1:length(c)
    insum = insum+c(i)*f((0.5)*((b-a)*r(i)+a+b));
end

format long
result = 0.5*(b-a)*(insum);
disp(result);

