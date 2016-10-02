#!/usr/bin/env python

import random
import string

import rospy
from std_msgs.msg import String

import cq_utilities

puzzle = cq_utilities.puzzlify("Here is the message.")
trans_dict = puzzle.get_trans_dict()
puzzle.unset("".join(trans_dict.keys()))

def cq_environment():
    pub = rospy.Publisher('puzzle_state', String, queue_size=10)
    rospy.init_node('environment')
    rate = rospy.Rate(10) # 10 Hz
    while not rospy.is_shutdown():
        pub_string = str(puzzle)
        #rospy.loginfo(pub_string)
        pub.publish(pub_string)
        rate.sleep()
    
if __name__ == '__main__':
    try:
        cq_environment()
    except rospy.ROSInterruptException:
        pass
