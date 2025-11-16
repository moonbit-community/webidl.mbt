///|
pub(all) enum Definition {
  Interface(Interface)
  InterfaceMixin(InterfaceMixin)
  Namespace(Namespace)
  Callback(Callback)
  Dictionary(Dictionary)
  Enum(Enum)
  Typedef(Typedef)
  Includes(Includes)
} derive(Show, ToJson)

///|
pub type Definitions = List[Definition]

///|
pub(all) enum Member {
  Operation(Operation)
  Constructor(Constructor)
  Attribute(Attribute)
  Const(Const)
  Iterable(Iterable)
  AsyncIterable(AsyncIterable)
  MapLike(MapLike)
  SetLike(SetLike)
} derive(Show, ToJson)

///|
pub type Id = String

///|
pub(all) struct Interface {
  name : Id
  partial : Bool
  members : List[Member]
  inheritance : Id?
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct InterfaceMixin {
  name : Id
  partial : Bool
  members : List[Member]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Namespace {
  name : Id
  partial : Bool
  members : List[Member]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Callback {
  name : Id
  idl_type : IDLType
  arguments : List[Argument]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Dictionary {
  name : Id
  partial : Bool
  members : List[DictionaryField]
  inheritance : Id?
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct DictionaryField {
  name : Id
  required : Bool
  idl_type : IDLTypeWithExtAttr
  attrs : ExtAttrs
  default : Value?
} derive(Show, ToJson)

///|
pub(all) struct Enum {
  name : Id
  values : List[String]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Typedef {
  name : Id
  idl_type : IDLTypeWithExtAttr
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Includes {
  target : Id
  includes : Id
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Operation {
  special : OperationKind
  idl_type : IDLType?
  name : Id?
  arguments : List[Argument]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) enum OperationKind {
  Regular
  Getter
  Setter
  Deleter
  Static
  Stringifier
} derive(Show, ToJson)

///|
pub(all) struct Constructor {
  arguments : List[Argument]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Attribute {
  name : Id
  special : AttributeKind
  readonly_ : Bool
  idl_type : IDLTypeWithExtAttr
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) enum AttributeKind {
  Regular
  Static
  Stringifier
  Inherit
} derive(Show, ToJson)

///|
pub(all) struct Const {
  name : Id
  idl_type : IDLType
  value : Value
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Argument {
  name : String
  idl_type : IDLTypeWithExtAttr
  default : Value?
  optional : Bool
  variadic : Bool
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct MapLike {
  idl_type : IDLTypeWithExtAttr
  readonly_ : Bool
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct Iterable {
  idl_type : IDLTypeWithExtAttr
  opt_type : IDLTypeWithExtAttr?
  async_ : Bool
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct AsyncIterable {
  idl_type : IDLTypeWithExtAttr
  opt_type : IDLTypeWithExtAttr?
  arguments : List[Argument]
  attrs : ExtAttrs
} derive(Show, ToJson)

///|
pub(all) struct SetLike {
  idl_type : IDLTypeWithExtAttr
  readonly_ : Bool
  attrs : ExtAttrs
} derive(Show, ToJson)
