#!/usr/bin/env python

from lidapy.framework.agent_starter import AgentStarter
from lidapy.framework import msg as lidamsg
from lidapy.framework import module as mod
from std_msgs import msg as rosmsg
import traceback
from cq_utilities import load_puzzle


PUZZLE_STATE = lidamsg.FrameworkTopic("puzzle_state", rosmsg.String)
AGENT_ACTION = lidamsg.FrameworkTopic("agent_action", rosmsg.String)

puzzle_file = "../data/cq_160209.txt"


class CQ_Environment(mod.FrameworkModule):

    def __init__(self, **kwargs):
        super(CQ_Environment, self).__init__("environment", **kwargs)
        self.add_publisher(PUZZLE_STATE)
        self.add_subscriber(AGENT_ACTION)
        self.puzzle = load_puzzle(puzzle_file)

    def call(self):
        next_action = self.get_next_msg(AGENT_ACTION)
        print next_action

class CQ_Agent(mod.FrameworkModule):

    def __init__(self, **kwargs):
        super(CQ_Agent, self).__init__("agent", **kwargs)
        self.add_publisher(AGENT_ACTION)
        self.add_subscriber(PUZZLE_STATE)

    def call(self):
        self.publish(AGENT_ACTION, "hahahahaha!")



if __name__ == '__main__':

    try:
        starter = AgentStarter()
        starter.add_module(CQ_Environment)
        starter.add_module(CQ_Agent)
        starter.start()

    except Exception as e:
        print "Received an exception: {}".format(e)
        traceback.print_exc()

    finally:
        pass

