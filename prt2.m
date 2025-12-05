
%project 3 part 2
%detrivate/integral - Analyzing Position, Velocity, and Acceleration

%Determine the acceleration function by using the central difference estimation of the derivative.
time = 0:12;
velocity = [0 1 1.8 2.4 2.6 2.7 2.6 2.2 2 1.9 1.8 1.8 1.8];

deltaT = time(2)-time(1); %is always 1 second
n = length(velocity);

%acc = (vf-vi)/2*deltaT
for i = 2:n-1
    acc(i) = (velocity(i+1)-velocity(i-1))/2*deltaT;
end

position = 
