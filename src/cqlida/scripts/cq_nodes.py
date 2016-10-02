#!/usr/bin/env python

import random
import string

import rospy
from std_msgs.msg import String

import cq_classes
import cq_utilities



pub = rospy.Publisher('puzzle_state', String)
rospy.init_node('environment')
rate = rospy.Rate(10) # 10 Hz
while not rospy.is_shutdown():
    
