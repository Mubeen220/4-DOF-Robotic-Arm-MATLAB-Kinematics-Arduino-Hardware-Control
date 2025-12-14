clc
clear all
% defining parameters of DH table
a = [0 90 108 65 ];% link lengths
al = [pi/2 0 0 0 ];% twist between links
d = [145 0 0 0 ];%offset
theeta = [10 15 20 25];%angle between links
% Storing angles( both coordinates)for each link in an array
c1 = [cosd(theeta(1)) cosd(theeta(2)) cosd(theeta(3)) cosd(theeta(4)) ];
s1 = [sind(theeta(1)) sind(theeta(2)) sind(theeta(3)) sind(theeta(4)) ];
c2 = [cosd(al(1)) cosd(al(2)) cosd(al(3)) cosd(al(4))];
s2 = [sind(al(1)) sind(al(2)) sind(al(3)) sind(al(4))];
% transformation matrix for each link
T1 = [c1(1) -s1(1)*c2(1) s1(1)*s2(1) 1.2*c1(1); s1(1) c1(1) -c1(1)*s2(1) 1.2*s1(1); 0 s2(1) c2(1) d(1); 0 0 0 1];
T2 = [c1(2) -s1(2)*c2(2) s1(2)*s2(2) 22*c1(2); s1(2) c1(2) -c1(2)*s2(2) 22*s1(2); 0 s2(2) c2(2) d(2);0 0 0 1];
T3 = [c1(3) -s1(3)*c2(3) s1(3)*s2(3) 22*c1(3);s1(3) c1(3) -c1(3)*s2(3) 22*s1(3);0 s2(3) c2(3) d(3);0 0 0 1];
T4 = [c1(4) -s1(4)*c2(4) s1(4)*s2(4) 0*c1(4);s1(4) c1(4) -c1(4)*s2(4) 0*s1(4);0 s2(4) c2(4) d(4);0 0 0 1];

% transformation of whole system/robot
T = T1*T2*T3*T4;
%link command to contact coordinate of each joint
L(1) = Link([theeta(1) d(1) a(1) al(1)]);
L(2) = Link([theeta(2) d(2) a(2) al(2)]);
L(3) = Link([theeta(3) d(3) a(3) al(3)]);
L(4) = Link([theeta(4) d(4) a(4) al(4)]);

SCORBOT = SerialLink(L);
% command for forward kinematics from base to gripper
robot = fkine(SCORBOT, [theeta(1) theeta(2) theeta(3) theeta(4) ])
SCORBOT.name = 'ROBOTIC ARM';
%plotting the robot
SCORBOT.plot([theeta(1) theeta(2) theeta(3) theeta(4) ]);
title('4 DOF Pick & Place');