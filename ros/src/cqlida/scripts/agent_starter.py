#!/usr/bin/env python

from lidapy.framework.agent_starter import AgentStarter
import traceback

if __name__ == '__main__':

    try:
        starter = AgentStarter()
        starter.start()

    except Exception as e:
        print "Received an exception: {}".format(e)
        traceback.print_exc()

    finally:
        pass
