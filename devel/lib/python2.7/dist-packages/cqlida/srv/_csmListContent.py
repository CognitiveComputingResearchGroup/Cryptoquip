# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cqlida/csmListContentRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class csmListContentRequest(genpy.Message):
  _md5sum = "6e5189348fab3e6087071660d62c9480"
  _type = "cqlida/csmListContentRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 max_results
"""
  __slots__ = ['max_results']
  _slot_types = ['int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       max_results

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(csmListContentRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.max_results is None:
        self.max_results = 0
    else:
      self.max_results = 0

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
      buff.write(_struct_i.pack(self.max_results))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (self.max_results,) = _struct_i.unpack(str[start:end])
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
      buff.write(_struct_i.pack(self.max_results))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (self.max_results,) = _struct_i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i = struct.Struct("<i")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cqlida/csmListContentResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cqlida.msg

class csmListContentResponse(genpy.Message):
  _md5sum = "365444ac37c2afa52a19e72487f3747b"
  _type = "cqlida/csmListContentResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """cqlida/KeyValues[] content


================================================================================
MSG: cqlida/KeyValues
string key
string[] values
"""
  __slots__ = ['content']
  _slot_types = ['cqlida/KeyValues[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       content

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(csmListContentResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.content is None:
        self.content = []
    else:
      self.content = []

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
      length = len(self.content)
      buff.write(_struct_I.pack(length))
      for val1 in self.content:
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
      if self.content is None:
        self.content = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.content = []
      for i in range(0, length):
        val1 = cqlida.msg.KeyValues()
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
        self.content.append(val1)
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
      length = len(self.content)
      buff.write(_struct_I.pack(length))
      for val1 in self.content:
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
      if self.content is None:
        self.content = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.content = []
      for i in range(0, length):
        val1 = cqlida.msg.KeyValues()
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
        self.content.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
class csmListContent(object):
  _type          = 'cqlida/csmListContent'
  _md5sum = '03e4330075f540fcfbaafbb883d34643'
  _request_class  = csmListContentRequest
  _response_class = csmListContentResponse