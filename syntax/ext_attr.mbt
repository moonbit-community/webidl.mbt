///|
pub(all) struct ExtAttr {
  name : Id
  rhs : Rhs
} derive(Show)

///|
pub type ExtAttrs = List[ExtAttr]

///|
pub(all) enum Rhs {
  NoArgs
  ArgList(List[Argument])
  Ident(Id)
  String(String)
  Integer(String)
  Decimal(String)
  WildCard
  IdentList(List[Id])
  IntegerList(List[String])
  NamedArgList(Id, List[Argument])
} derive(Show)

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
