# 4-DOF-Robotic-Arm-MATLAB-Kinematics-Arduino-Hardware-Control
This repository presents a complete design, simulation, and hardware implementation of a 4-DOF robotic arm. The project integrates forward kinematics modeling in MATLAB with real-time servo control using Arduino and potentiometers.

**Project Features**
4-DOF serial robotic manipulator with gripper
DH parameter-based modeling
Homogeneous transformation matrices
Forward kinematics computation
MATLAB visualization using Peter Corke Robotics Toolbox
Arduino-based hardware control
Manual joint control using potentiometers
Servo motor actuation for pick-and-place operations

**Hardware Implementation**
Microcontroller: Arduino UNO
Actuators: 4 × Servo Motors
Input Devices: 4 × Potentiometers
Control Method: Analog input → mapped servo angles (0–179°)
Each potentiometer directly controls a joint, allowing intuitive real-time manipulation of the robotic arm.

**Project Features**
4-DOF serial robotic manipulator with gripper
DH parameter-based modeling
Homogeneous transformation matrices
Forward kinematics computation
MATLAB visualization using Peter Corke Robotics Toolbox
Arduino-based hardware control
Manual joint control using potentiometers
Servo motor actuation for pick-and-place operations

**Hardware Implementation**
Microcontroller: Arduino UNO
Actuators: 4 × Servo Motors
Input Devices: 4 × Potentiometers
Control Method: Analog input → mapped servo angles (0–179°)
Each potentiometer directly controls a joint, allowing intuitive real-time manipulation of the robotic arm.

**Arduino Control Logic**
Read analog values from potentiometer
Map values to servo angles
Drive servos using PWM signals
Enable smooth manual joint control

**Software & Tools**
MATLAB
Peter Corke Robotics Toolbox
Arduino IDE
Embedded C / C++

**Applications**
Industrial pick-and-place systems
Educational robotics labs
Warehouse automation
Prototyping and R&D

**Future Work**
Inverse kinematics
Trajectory planning
Closed-loop feedback using encoders
Integration with ROS
Read analog values from potentiometer
Map values to servo angles
Drive servos using PWM signals
Enable smooth manual joint control

Software & Tools
MATLAB
Peter Corke Robotics Toolbox
Arduino IDE
Embedded C / C++

Applications
Industrial pick-and-place systems
Educational robotics labs
Warehouse automation
Prototyping and R&D

Future Work
Inverse kinematics
Trajectory planning
Closed-loop feedback using encoders
Integration with ROS
