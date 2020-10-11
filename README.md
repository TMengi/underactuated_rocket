# Underactuated Rocket System

Code repository for the underactuated rocket problem (p1-4) for ECE 209AS F20 computational robotics at UCLA

[Overleaf paper link](https://www.overleaf.com/read/wdnnkncphthx)

## Files

`rocket.slx` is the main Simulink model which includes the dynamics and control scheme. It relies on the `initFcn` callback to `init.m`, which defines the various constants necessary for the model. There is also a `stopFcn` callback to `plot_results.m` which helps to visualize the responses. 

The control scheme is described in the above Overleaf document.

## Results

The following plots show the rocket position, rocket attitude, and point mass position for a constant reference attitude angle of 10 deg.

![Plot of xy rocket position](position.png)

![Plot of rocket attitude angle](attitude.png)

![Plot of point mass position](point_mass.png)

