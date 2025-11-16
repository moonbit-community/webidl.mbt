///|
pub(all) struct IDLTypeWithExtAttr {
  attrs : ExtAttrs
  ty : IDLType
} derive(Show, ToJson)

///|
pub(all) enum IDLType {
  Integer(IntegerType)
  String(StringType)
  Floating(FloatingType)
  Nullable(IDLType)
  Union(List[IDLTypeWithExtAttr])
  Id(Id)
  // buffer related type
  ArrayBuffer
  SharedArrayBuffer
  DataView
  Int8Array
  Int16Array
  Int32Array
  Uint8Array
  Uint16Array
  Uint32Array
  Uint8ClampedArray
  BigInt64Array
  BigUint64Array
  Float16Array
  Float32Array
  Float64Array
  // other primitives
  Boolean
  Byte
  Octet
  Bigint
  // distinguishable type
  Object
  Identifer
  Symbol
  Undefined
  // generic
  Promise(IDLType)
  Record(StringType, IDLTypeWithExtAttr)
  Sequence(IDLTypeWithExtAttr)
  AsyncSequence(IDLTypeWithExtAttr)
  FrozenArray(IDLTypeWithExtAttr)
  ObservableArray(IDLTypeWithExtAttr)
  Any
} derive(Show, ToJson)

///|
pub(all) enum FloatingType {
  Float
  Double
  Unrestricted(FloatingType)
} derive(Show, ToJson)

///|
pub(all) enum StringType {
  ByteString
  DOMString
  USVString
} derive(Show, ToJson)

///|
pub(all) enum IntegerType {
  Short
  Long
  LongLong
  Unsigned(IntegerType)
} derive(Show, ToJson)
