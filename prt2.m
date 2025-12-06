%project 3 part 2
%detrivate/integral - Analyzing Position, Velocity, and Acceleration

%Determine the acceleration function by using the central difference estimation of the derivative.
time = 0:12;
velocity = [0 1 1.8 2.4 2.6 2.7 2.6 2.2 2 1.9 1.8 1.8 1.8];

deltaT = time(2)-time(1); %is always 1 second
n = length(velocity);

%Initiallize acceraltion and position when started
x(1)=0;
acc(1)=0;

%% xf = xi + 0.5 * (vi + vf) * deltaT;
%acc = (vf-vi)/2*deltaT
for i = 2:n-1
    acc(i) = (velocity(i+1)-velocity(i-1))/(2*deltaT);
end
%solve for end points
acc(1) = (velocity(2)-velocity(1))/(deltaT);
acc(n) = (velocity(n)-velocity(n-1))/(deltaT);


%xf = xi + 0.5 * (vi + vf) * deltaT;
for i = 2:n
    x(i) = x(i-1)+0.5*(velocity(i)+velocity(i-1))*deltaT;
end

%% ploting 
subplot(3,1,1)
plot(time,acc)
title("Acceleration vs Time")
xlabel("Time(s)")
ylabel("Acceleration(m/s)^2")
grid on

subplot(3,1,2)
plot(time,velocity)
title("Velocity vs Time")
xlabel("Time(s)")
ylabel("Velocity(m/s)^2")
grid on

subplot(3,1,3)
plot(time,x)
title("Position vs Time")
xlabel("Time(s)")
ylabel("Position(m)")
grid on