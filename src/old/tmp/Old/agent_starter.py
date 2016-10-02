#!/usr/bin/env python

import traceback

from lidapy.framework.agent_starter import AgentStarter

from tmp.hello_module import CQ_SensoryMemory

if __name__ == '__main__':

    try:
        starter = AgentStarter()
        starter.add_module(CQ_SensoryMemory)
        starter.start()

    except Exception as e:
        print "Received an exception: {}".format(e)
        traceback.print_exc()

    finally:
        pass
