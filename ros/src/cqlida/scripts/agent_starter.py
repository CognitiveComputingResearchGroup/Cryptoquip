#!/usr/bin/env python

from lidapy.framework.agent_starter import AgentStarter
from hello_module import CQ_SensoryMemory
import traceback

if __name__ == '__main__':

    try:
        starter = AgentStarter()
        starter.add_module("SensoryMemory",CQ_SensoryMemory)
        starter.start()

    except Exception as e:
        print "Received an exception: {}".format(e)
        traceback.print_exc()

    finally:
        pass
