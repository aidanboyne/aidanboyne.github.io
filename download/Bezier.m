%% Parametric Cubic Bezier Interpolation
%Constructs Cubic Bezier curve given endpoints and guidepoints
%Code for Math151A Spring 2022
%Written by Aidan Boyne

%% Setup
%Endpoints
%p0 = [0,0]; %[x_0,y_0]
%p1 = [5,2]; %[x_1,y_1]
p0 = [0,0];
p1 = [1,0];
g0 = [1,1];
g1 = [0,1];

%Guidepoints
% g0 = [1,1];
% g1 = [6,1];
%g0 = [0.5,0.5];
%g1 = [5.5,1.5];

%% Calculating Coefficients and Points

a = [g0(1)-p0(1),p1(1)-g1(1)]; %alpha
b = [g0(2)-p0(2),p1(2)-g1(2)]; %beta

%time variable
t = 0:0.001:1;

x_t = (2*(p0(1)-p1(1))+3*(a(1)+a(2)))*t.^3+(3*(p1(1)-p0(1))-3*(a(2)+2*a(1)))*t.^2 ...
    + 3*a(1)*t+p0(1);

y_t = (2*(p0(2)-p1(2))+3*(b(1)+b(2)))*t.^3+(3*(p1(2)-p0(2))-3*(b(2)+2*b(1)))*t.^2 ...
    + 3*b(1)*t+p0(2);

%% Plotting
hold on

title("Piecewise Bezier Curve")
xlabel("x")
ylabel("y")
plot(x_t,y_t,'DisplayName','Polynomial')
plot([p0(1),g0(1)],[p0(2),g0(2)],'--','DisplayName','Guideline 1')
plot([p1(1),g1(1)],[p1(2),g1(2)],'--','DisplayName','Guideline 2')
plot(p0(1),p0(2),'o','DisplayName','Endpoint 1');
plot(p1(1),p1(2),'o','DisplayName','Endpoint 2');
plot(g0(1),g0(2),'o','DisplayName','Guidepoint 1');
plot(g1(1),g1(2),'o','DisplayName','Guidepoint 2');

legend

%% Output Coefficients

disp('The equations of the Bezier curve are given by:')
formatSpec = 'x(t) = (%4.2f)t^3+(%4.2f)t^2+(%4.2f)t+%4.2f\n';
printx = [(2*(p0(1)-p1(1))+3*(a(1)+a(2))),(3*(p1(1)-p0(1))-3*(a(2)+2*a(1))),3*a(1),p0(1)];
fprintf(formatSpec,printx(1:end))
formatSpec = 'y(t) = (%4.2f)t^3+(%4.2f)t^2+(%4.2f)t+%4.2f\n';
printx = [(2*(p0(2)-p1(2))+3*(b(1)+b(2))),(3*(p1(2)-p0(2))-3*(b(2)+2*b(1))),3*b(1),p0(2)];
fprintf(formatSpec,printx(1:end))

