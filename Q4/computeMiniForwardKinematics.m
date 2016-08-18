function [endeff] = computeMiniForwardKinematics(rads1,rads2)

beta = (rads1 - rads2)/2;
alpha = (1/2) * (rads1 + rads2) + pi;
r = cos(pi - beta) + sqrt(4 - sin(pi - beta) * sin(pi - beta));
[x,y] = pol2cart(alpha,r);
endeff = [x,y];
end