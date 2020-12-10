# Crash Course on Autonomous Racing

Here are some of the most essential topics that are recommended for getting a racing system ready, most of which are from [F1Tenth](https://f1tenth.org/learn.html). This is a good platform for introducing topics in autonomous racing. Some in-depth topics may not be possible to cover in this README, but will be worked on during your work in your role. 

**Recommended** to learn on-the-go, alongside system-specific learning/research. Every topic is highly useful for your benefit, but learn what you need for your own purpose. **Challenging**, but productive (and interesting) way to appreciate the design of autonomous systems, and to gain the most applicable skills. Especially good to learn if you are not in your final year of study, or want to learn outside of your studies.

This document will get updated regularly, so you can star this repo, or fork it. Some extra content may be added in addition to just this README file.

### Before you start:

- You can install Ubuntu 18.04 LTS as a dual-boot OS following the [Tutorial](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview) (***BACKUP YOUR MAIN OS AND LOCAL DRIVES IN CASE OF DATA LOSS DUE TO INSTALLATION ERRORS, EVEN IF RARE***) - Most reliable way once you have the OS installed
- You can run everything in a [Docker](https://www.docker.com/products/docker-desktop) container with Ubuntu 18.04 and [ros:melodic-robot-bionic](https://hub.docker.com/_/ros?tab=description) (reference to [Dockerfile](https://github.com/osrf/docker_images/blob/7ff09c2a75e902bc2bb25a1f1ae748ec4e9c7a4b/ros/melodic/ubuntu/bionic/robot/Dockerfile) and [Tutorial](http://wiki.ros.org/docker/Tutorials)) - You may need to give Docker [permissions](https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue) after installation (using Docker engine in Ubuntu)
- Ubuntu Virtual Machine (like VirtualBox) on your main OS is fine also, but may run slightly slower than dual-boot. Example guide [here](https://linuxhint.com/install_ubuntu_18-04_virtualbox/).
- Guide to [ROS Melodic](http://wiki.ros.org/melodic/Installation/Ubuntu) installation (prerequisite for F1Tenth Sim is ros-melodic-desktop, but full version is recommended, in case you want to more yourself). 
- Get familiar with [Linear Algebra](http://cs229.stanford.edu/section/cs229-linalg.pdf) and [Probability](http://cs229.stanford.edu/section/cs229-prob.pdf) on-the-go, as it's very common in the theory the more in-depth you go
- Check out the [AMZ team resources](https://github.com/AMZ-Driverless/fsd-resources) for extra stuff like example systems, datasets, and references!

### ROS Tips

- This [cheat sheet](http://air.imag.fr/images/f/f7/ROScheatsheet.pdf) shows very comprehenisve command line commands for ROS, as well as common commands [here](https://subscription.packtpub.com/book/hardware_and_creative/9781782175193/1/ch01lvl1sec15/ros-commands-summary)

### Introduction to Autonomous Racing

1. [(F1Tenth) Lecture 1](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/lecture01.html) - Introduces F1Tenth platform, autonomous racing concepts, and simulator (Ignore UPenn-specific logistics)
2. [(F1Tenth) Tutorial 1](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/tutorial1.html) - Introduces the learning-based F1Tenth simulator (should run on most computers, backup main OS before making new Ubuntu installation). [Sim installation on Ubuntu and more](https://f1tenth.readthedocs.io/en/stable/going_forward/simulator/sim_info.html#adding-a-planning-node)
3. [(F1Tenth) Lab 1](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab1.html) - Introduces the Robot Operating System (ROS) framework, good for learning main features (we will use ROS Melodic as the distro) ([Further tutorials on ROS in their wiki](http://wiki.ros.org/ROS/Tutorials))
4. [(YouTube) The ethical dilemma of self-driving cars - Patrick Lin](https://www.youtube.com/watch?v=ixIoDYVfKA0)
5. [(YouTube) First Formula Student Germany (Driverless) 2017 Moments](https://www.youtube.com/watch?v=dZVfvsR8NM0)
6. [(Tool) Learn X in Y minutes](https://learnxinyminutes.com/) (for any language of your choice, we recommend Python, C/C++)
7. [(Tutorial) Using ROS with C++ and Python Nodes](http://wiki.ros.org/ROSNodeTutorialC%2B%2B) - Also includes tutorials for C++ and Python individually. This is for extra reference

### Core Concepts

1. [(F1Tenth) Lecture 2](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/lecture02.html) - Introduces safety systems, and AV sensors
2. [(F1Tenth) Tutorial 2](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/tutorial2.html) - Introduces the addition of system planners in F1Tenth Simulator
3. [(F1Tenth) Lab 2](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab2.html) - Introduces the programming of an Automatic Braking System in F1Tenth Sim. Important safety feature of car
4. [(F1Tenth) Lecture 3](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/lecture03.html) - Introduces coordinates, reference frames, rigid body transformations, and tf2_ros
5. [(YouTube) Controlling Self Driving Cars](https://www.youtube.com/watch?v=4Y7zG48uHRo) - Brief introduction to controller design (PID) - Note [Lecture 4 for F1Tenth](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/lecture04.html) has incorrect slides for Laplace Domain and PID control, but refers to the wall follower lab
6. [(F1Tenth) Lecture 4](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleA/lecture04.html) - Perception and Localization Intro (covered further in Module C) - References to further control theory will be in Control Engineering repo
7. [(F1Tenth) Lab 3](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab3.html) - Wall Follower Controller Intro - Use a PID controller to race the car along the walls of the track! ([Brian Douglas on MATLAB](https://www.youtube.com/watch?v=wkfEZmsQqiA&list=PLn8PRpmsu08pQBgjxYFXSsODEF3Jqmm-y) has a useful intro to PIDs series, along with in-depth control systems topics on his own channel)
8. [(YouTube) AMZ Driverless presents Learning-Based Model Predictive Control](https://www.youtube.com/watch?v=bjlT-6KVQ7U) to overcome model inaccuracies! (quick 3 min research presentation)

### Reactive Racing Methods

1. [(F1Tenth) Lecture 6](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleB/lecture06.html) - Follow the Gap Method and variants (details, pros and cons of non-planning methods are introduced)
2. [(F1Tenth) Lab 4](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab4.html) - Have a go at designing and tuning your own Follow the Gap method!
3. [(YouTube) Reactive racing success in head-to-head](https://www.youtube.com/watch?v=4uuvtkXtjwA)

### Mapping and Localization Intro

1. [(F1Tenth) Lecture 9 & 10](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleC/lecture09.html) - Details of the ideas, and some algorithms that can be used
2. [(F1Tenth) Lecture 11](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleC/lecture11.html) - Particle filter localization, and in-depth details of algorithm
3. [(F1Tenth) Lecture 12](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleC/lecture12.html) - Introduces modern SLAM using Google Cartographer as part of a mapping and localization system, key breakthroughs in efficiency, and guide on installing it
4. [(F1Tenth) Lab 5](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab5.html) - Create your own Scan Matching system (group work is recommended from this lab onwards, provides a rigorous and effective way to learn about optimizing an algorithm like this, but challenging)
5. [(YouTube) AMZ Driverless on Redundant Perception and State Estimation](https://www.youtube.com/watch?v=ir_uqEYuT84) - How robust perception plays a key role in Localization
6. [(Book/Repo) Theory and implementation of Kalman/Bayesian Filters (useful for localization)](https://github.com/rlabbe/Kalman-and-Bayesian-Filters-in-Python)

### Planning Methods

1. [(F1Tenth) Lecture 13](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleD/lecture13.html) - Introduction to Pure Pursuit racing and waypoint following
2. [(F1Tenth) Lab 6](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab6.html#) - Use Google Cartographer SLAM and Pure Pursuit planning to race your car!
3. [(F1Tenth) Lecture 14](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleD/lecture14.html) - Path Planning/Search methods, and RRT/RRT* for local planning
4. [(Tool) Uniform Grid Path Planner simulations by Lai Yan Kai](https://laiyankai.github.io/UniformPlanners/index.html) - Great for visualizing step-by-step calculations in any configuration for a few global planning algorithms
5. [(F1Tenth) Lab 7](https://f1tenth-coursekit.readthedocs.io/en/stable/assignments/labs/lab7.html) - Design your own motion planner system! Learn about different practical considerations of path planning, and RRT/RRT*
6. [(YouTube) MATLAB Intro to Autonomous Path Planning](https://www.youtube.com/watch?v=QR3U1dgc5RE)
7. [(F1Tenth) Lecture 20](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleF/lecture20.html) - Raceline Optimization (introduces methods for solving the quickest route for any track, or planning-based control problem)

### Control

1. [(YouTube) Intro to Fourier Transforms and Laplace Transforms](https://www.youtube.com/watch?v=1JnayXHhjlg&list=PLUMWjy5jgHK3jmgpXCQj3GRxM3u9BmO_v&index=1) - a baseline topic that you will see often in analyzing control problems, and a great, concise playlist for introducing the maths, and the purpose of these representations. More in-depth topics on the Brian Douglas channel
2. [(YouTube) Model Predictive Control (MPC) by MATLAB](https://www.youtube.com/watch?v=8U0xiOkDcmw&list=PLn8PRpmsu08ozoeoXgxPSBKLyd4YEHww8&index=1) - comprehensive introduction and guide on what MPC is about
3. [(F1Tenth) Lecture 21](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleF/lecture21.html) - MPC, alternative introduction, with further references for F1Tenth racing

### Vision

1. [(F1Tenth) Lecture 17](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleE/lecture17.html) - Introduction to vision model and pose estimation
2. [(F1Tenth) Lecture 18](https://f1tenth-coursekit.readthedocs.io/en/stable/lectures/ModuleE/lecture18.html) - Multi-view geometry, and YOLO object detection
3. [(YouTube) Stanford CS231n by Andrej Karpathy](https://www.youtube.com/watch?v=NfnWJUyUJYU&list=PLkt2uSq6rBVctENoVBg1TpCC7OQi31AlC&index=1) - rigorous coverage of computer vision, specifically Convolutional Neural Networks for Visual Recognition. Long, detailed lecture series. Pre-requisite to Deep Learning is [Machine Learning](http://cs229.stanford.edu/syllabus-autumn2018.html)
4. [PyTorch Tutorial](https://pytorch.org/tutorials/) - currently more common framework for Deep Learning researchers (also Lightning)
5. [Keras quick guide](https://keras.io/getting_started/intro_to_keras_for_researchers/) - built on TensorFlow framework, research work sources may also reference TF1.0, TF2.0, Keras (different API changes throughout TF versions, but should not be varying for core machine learning functionality, and similar to PyTorch in quite a few ways)

### Reinforcement Learning (RL)

1. [Introduction to Deep Learning](http://introtodeeplearning.com/) - Here's a link to the full MIT Deep Learning course. It's really easy to grasp and they have a bunch of interesting labs for you to work on.
2. [OpenAI Gym docs/tutorial](https://gym.openai.com/docs/) - This is the most widely used framework for RL experiment benchmarking
3. [Spinning Up by OpenAI](https://spinningup.openai.com/en/latest/) - Rigorous guide to RL and deep RL, useful for new researchers
4. [(YouTube) Solving Rubik's Cube with a single robot hand](https://www.youtube.com/watch?v=x4O8pojMF0w) - very challenging for even people to do one-handed
5. [(YouTube) David Silver's DeepMind intro to RL](https://www.youtube.com/watch?v=2pWv7GOvuf0&list=PLqYmG7hTraZDM-OYHWgPebj2MfCFzFObQ&index=1) - lecture series that delivers holistic view on RL, very good for understanding but not the most practical for implementation of programs.
6. [Alternative RL course with Colab-ready notebooks](https://github.com/yandexdataschool/Practical_RL)
   
