function [rads1,rads2] = computeRrInverseKinematics(X,Y)

syms theta1 theta2 ;

%S = vpasolve([cos(theta1+theta2)+cos(theta1) == X, sin(theta1+theta2)+sin(theta1) == Y],[theta1,theta2],[0 2*pi;0 2*pi])
%rads1 = double(S.theta1);
%rads2 = double(S.theta2);
eqn1 = cos(theta1+theta2)+cos(theta1) == X;
eqn2 = sin(theta1+theta2)+sin(theta1) == Y;
eqns = [eqn1,eqn2];
S = solve(eqns)
rads1 = double(S.theta1(1,1))
rads2 = double(S.theta2(1,1))

