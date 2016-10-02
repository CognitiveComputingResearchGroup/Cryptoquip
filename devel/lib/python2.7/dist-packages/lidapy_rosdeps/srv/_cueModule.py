# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lidapy_rosdeps/cueModuleRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import lidapy_rosdeps.msg

class cueModuleRequest(genpy.Message):
  _md5sum = "c83f5c4e4e0e20fbc174f4f058009476"
  _type = "lidapy_rosdeps/cueModuleRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """CognitiveContent cue

================================================================================
MSG: lidapy_rosdeps/CognitiveContent
Header header
KeyValues[] elements

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
"""
  __slots__ = ['cue']
  _slot_types = ['lidapy_rosdeps/CognitiveContent']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cue

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cueModuleRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cue is None:
        self.cue = lidapy_rosdeps.msg.CognitiveContent()
    else:
      self.cue = lidapy_rosdeps.msg.CognitiveContent()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.cue.header.seq, _x.cue.header.stamp.secs, _x.cue.header.stamp.nsecs))
      _x = self.cue.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.cue.elements)
      buff.write(_struct_I.pack(length))
      for val1 in self.cue.elements:
        _x = val1.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.values)
        buff.write(_struct_I.pack(length))
        for val2 in val1.values:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.cue is None:
        self.cue = lidapy_rosdeps.msg.CognitiveContent()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cue.header.seq, _x.cue.header.stamp.secs, _x.cue.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cue.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cue.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cue.elements = []
      for i in range(0, length):
        val1 = lidapy_rosdeps.msg.KeyValues()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.key = str[start:end].decode('utf-8')
        else:
          val1.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.values = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.values.append(val2)
        self.cue.elements.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.cue.header.seq, _x.cue.header.stamp.secs, _x.cue.header.stamp.nsecs))
      _x = self.cue.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.cue.elements)
      buff.write(_struct_I.pack(length))
      for val1 in self.cue.elements:
        _x = val1.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.values)
        buff.write(_struct_I.pack(length))
        for val2 in val1.values:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.cue is None:
        self.cue = lidapy_rosdeps.msg.CognitiveContent()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cue.header.seq, _x.cue.header.stamp.secs, _x.cue.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cue.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cue.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cue.elements = []
      for i in range(0, length):
        val1 = lidapy_rosdeps.msg.KeyValues()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.key = str[start:end].decode('utf-8')
        else:
          val1.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.values = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.values.append(val2)
        self.cue.elements.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lidapy_rosdeps/cueModuleResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import lidapy_rosdeps.msg

class cueModuleResponse(genpy.Message):
  _md5sum = "d1e0ca8227c3d18404ada3303db422b2"
  _type = "lidapy_rosdeps/cueModuleResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """CognitiveContent[] result


================================================================================
MSG: lidapy_rosdeps/CognitiveContent
Header header
KeyValues[] elements

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
"""
  __slots__ = ['result']
  _slot_types = ['lidapy_rosdeps/CognitiveContent[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cueModuleResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = []
    else:
      self.result = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.result)
      buff.write(_struct_I.pack(length))
      for val1 in self.result:
        _v1 = val1.header
        buff.write(_struct_I.pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.elements)
        buff.write(_struct_I.pack(length))
        for val2 in val1.elements:
          _x = val2.key
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          length = len(val2.values)
          buff.write(_struct_I.pack(length))
          for val3 in val2.values:
            length = len(val3)
            if python3 or type(val3) == unicode:
              val3 = val3.encode('utf-8')
              length = len(val3)
            if python3:
              buff.write(struct.pack('<I%sB'%length, length, *val3))
            else:
              buff.write(struct.pack('<I%ss'%length, length, val3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.result is None:
        self.result = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result = []
      for i in range(0, length):
        val1 = lidapy_rosdeps.msg.CognitiveContent()
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _struct_I.unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8')
        else:
          _v3.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.elements = []
        for i in range(0, length):
          val2 = lidapy_rosdeps.msg.KeyValues()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.key = str[start:end].decode('utf-8')
          else:
            val2.key = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.values = []
          for i in range(0, length):
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3 = str[start:end].decode('utf-8')
            else:
              val3 = str[start:end]
            val2.values.append(val3)
          val1.elements.append(val2)
        self.result.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.result)
      buff.write(_struct_I.pack(length))
      for val1 in self.result:
        _v5 = val1.header
        buff.write(_struct_I.pack(_v5.seq))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.elements)
        buff.write(_struct_I.pack(length))
        for val2 in val1.elements:
          _x = val2.key
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          length = len(val2.values)
          buff.write(_struct_I.pack(length))
          for val3 in val2.values:
            length = len(val3)
            if python3 or type(val3) == unicode:
              val3 = val3.encode('utf-8')
              length = len(val3)
            if python3:
              buff.write(struct.pack('<I%sB'%length, length, *val3))
            else:
              buff.write(struct.pack('<I%ss'%length, length, val3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.result is None:
        self.result = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result = []
      for i in range(0, length):
        val1 = lidapy_rosdeps.msg.CognitiveContent()
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _struct_I.unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.elements = []
        for i in range(0, length):
          val2 = lidapy_rosdeps.msg.KeyValues()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.key = str[start:end].decode('utf-8')
          else:
            val2.key = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.values = []
          for i in range(0, length):
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3 = str[start:end].decode('utf-8')
            else:
              val3 = str[start:end]
            val2.values.append(val3)
          val1.elements.append(val2)
        self.result.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2I = struct.Struct("<2I")
class cueModule(object):
  _type          = 'lidapy_rosdeps/cueModule'
  _md5sum = '09e7477070ec280047cf1b603087f753'
  _request_class  = cueModuleRequest
  _response_class = cueModuleResponse
