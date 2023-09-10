# Robotic Arm Project

Welcome to the Robotic Arm project repository. This project aims to model a robotic arm using SimScape and implement various control concepts using the Robotic System Toolbox in MATLAB. Below, you'll find descriptions of the four key project files.

## Project Files

### 1. Robot_DOF_2
- This file includes a CAD model of a 2-degree-of-freedom robotic arm created with SimScape.
- Demonstrates forward kinematics to directly control joint positions.
- Implements inverse kinematics to control the end effector's position.
- Trajectories for the arm can be provided using different methods, including editor block, signal generator, or predefined blocks from the Robotic System Toolbox.
- The project explores Jacobian and Velocity Kinematics for the robotic manipulator.

### 2. Robot_DOF_3
- Contains a CAD model of a 3-degree-of-freedom robotic arm using SimScape.
- Implements forward and inverse kinematics.
- Demonstrates PD (Proportional-Derivative) control and Computed Torque Control.
- Simulates the arm's motion under these control strategies.

### 3. Robot_Pick&Drop
- Presents a CAD model of a 3-degree-of-freedom robotic arm with a prismatic slider joint.
- Utilizes inverse kinematics to follow a triangular trajectory, where the robot alternately drops and picks up an object.
- The motion of the arm during this process is captured in the simulation video.

### 4. Robot_Roadmap_Path_Planning
- Focuses on path planning techniques using Probabilistic Roadmaps for mobile robots in workspace or manipulators in joint space.
- Loads and optionally inflates a binary occupancy map from 'Maze1.mat'.
- Generates a mobile robot probabilistic roadmap (PRM) with specified parameters.
- Prompts the user to select start and end points on the map.
- Iteratively refines the PRM to find a valid path between the chosen points.
- Displays the PRM and the final path if found.

Please refer to each file for detailed explanations, code, and simulation videos related to the respective components of the robotic arm project.

## Getting Started
To get started with this project, ensure you have MATLAB with SimScape and the Robotic System Toolbox installed. You can run and explore each file individually to understand the concepts and simulations.

Feel free to reach out if you have any questions or need further assistance.

Happy robot modeling and control!
