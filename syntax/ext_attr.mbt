///|
pub(all) struct ExtAttr {
  name : String
  arguments : List[Argument]
  rhs : Rhs?
} derive(Show)

///|
pub(all) enum Rhs {
  Identifier(Id)
  IdentifierList(List[Id])
  String(String)
  StringList(List[String])
  Decimal(String)
  DecimalList(List[String])
  Integer(String)
  IntegerList(List[String])
  Star
} derive(Show)

///|
pub typealias List[ExtAttr] as ExtAttrs

///|
pub(all) enum Value {
  Decimal(String)
  Undefined
  String(String)
  Number(String)
  Boolean(Bool)
  Null
  Infinity(negative~ : Bool)
  NaN
  Sequence
  Dictionary
} derive(Show)
