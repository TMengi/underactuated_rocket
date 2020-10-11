clear;
clc;

% constants
g = 9.8; % [m/s^2]
mb = 1000; % [kg]
p = .1; % fraction of mc/M [%]
mc = p/(1-p)*mb; % [kg]
M = mb + mc; % [kg]
d0 = 10; % [m]
d1 = 1; % [m]
Ib = 1/4*mb*d1^2 + 1/12*mb*(2*d0)^2; % [kg*m^2] moment of inertia of a cylinder about its first principl axis
F = 2*M*g; % [N]
w = 0; % [N]
theta_ref = 10*pi/180; % [rad]

% initial conditions
r = 0;
dr = 0;
p_BC = [0; d0] + mc/M*[r*d1; d0];
v_BC = zeros(2, 0);
theta = 0;
d_theta = 0;
