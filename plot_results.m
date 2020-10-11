pretty_pictures;

% parse simulink outputs
t = out.p.Time;
x = out.p.Data(:,1);
y = out.p.Data(:,2);
theta = out.theta.Data;
theta_ref = out.theta_ref.Data;
r = out.r.Data;
r_ref = out.r_ref.Data;

% trajectory
figure(1);
plot(x, y);
% axis('square');
grid on;
xlabel('x');
ylabel('y');
title('position');

% reference trajectory
y_ref = linspace(0, max(y), length(t))';
x_ref = y_ref.*tan(theta_ref);
hold on;
plot(x_ref, y_ref, 'k-');
hold off;

% theta
figure(2);
plot(t, 180/pi*theta);
hold on;
plot(t, 180/pi*theta_ref*ones(size(t)), 'r--');
hold off;
grid on;
xlabel('time [s]');
ylabel('attitude [deg]');
title('attitude angle');
legend({'actual', 'reference'}, 'location', 'best');

% r
figure(3);
plot(t, r);
hold on;
plot(t, r_ref, 'r--');
hold off;
grid on;
ylim([-1, 1]);
xlabel('time [s]');
title('point mass position');
legend({'actual', 'reference'}, 'location', 'best');
max(r)
min(r)
