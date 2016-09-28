#!/usr/bin/env python

from lidapy.module.sensory_memory import SensoryMemory
from lidapy.framework.msg import built_in_topics


class CQ_SensoryMemory(SensoryMemory):
    def __init__(self, **kwargs):
        super(CQ_SensoryMemory, self).__init__(**kwargs)

    # Must be overridden
    def call(self):
        super(SensoryMemory, self).call()

        self.publishers["detected_features"].publish("")


if __name__ == '__main__':

    try:
        module = SensoryMemory()
        module.run()

    except Exception as e:
        print e

    finally:
        pass
