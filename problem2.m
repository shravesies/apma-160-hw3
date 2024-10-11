T = 4; % final time = 4 years

t_vals = linspace(0, T, 2000); % 2,000 points between 0 and 4

% exact solution to differential equation (no "dots" are necessary for the operations)
Q = @(t) 20 - 40*cos(2*t)/17 + 10*sin(2*t)/17 - ...
         300*exp(-0.5*t)/17; 

Q_exact = Q(t_vals); % exact solution evaluated at t_vals

dt1 = 0.4;
dt2 = 0.2;
dt3 = 0.1;

num_steps1 = T/dt1;
num_steps2 = T/dt2;
num_steps3 = T/dt3;

q1 = pollution_level(dt1, num_steps1);
q2 = pollution_level(dt2, num_steps2);
q3 = pollution_level(dt3, num_steps3);

% plot time!
figure;
hold on;
plot(0:dt1:T, q1, 'r.-', 'MarkerSize',20)
plot(0:dt2:T, q2, 'b.-', 'MarkerSize',20)
plot(0:dt3:T, q3, 'g.-', 'MarkerSize',20)
plot(t_vals, Q_exact, 'k-', 'MarkerSize',20)

%labels
xlabel('Time ${(t)}$', 'FontSize',20, 'Interpreter','latex');
ylabel('Pollution Level $(q^{(t)})$', 'FontSize',20,'Interpreter','latex');
legend('Pollution Rate with subintervals of 0.4','Pollution Rate with subintervals of 0.2','Pollution Rate with subintervals of 0.1','Exact Pollution Rate', 'FontSize', 10)
hold off;