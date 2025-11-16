///|
using @prettyprinter {trait Pretty}

///|
using @prettyprinter {ctor, record, pretty}

///|
pub impl Pretty for Definition with pretty(self) {
  match self {
    Interface(i) => ctor("Interface", [pretty(i)])
    InterfaceMixin(i) => ctor("InterfaceMixin", [pretty(i)])
    Namespace(n) => ctor("Namespace", [pretty(n)])
    Callback(c) => ctor("Callback", [pretty(c)])
    Dictionary(d) => ctor("Dictionary", [pretty(d)])
    Enum(e) => ctor("Enum", [pretty(e)])
    Typedef(t) => ctor("Typedef", [pretty(t)])
    Includes(inc) => ctor("Includes", [pretty(inc)])
  }
}

///|
pub impl Pretty for Member with pretty(self) {
  match self {
    Operation(op) => ctor("Operation", [pretty(op)])
    Constructor(c) => ctor("Constructor", [pretty(c)])
    Attribute(a) => ctor("Attribute", [pretty(a)])
    Const(c) => ctor("Const", [pretty(c)])
    Iterable(it) => ctor("Iterable", [pretty(it)])
    AsyncIterable(it) => ctor("AsyncIterable", [pretty(it)])
    MapLike(m) => ctor("MapLike", [pretty(m)])
    SetLike(s) => ctor("SetLike", [pretty(s)])
  }
}

///|
pub impl Pretty for Interface with pretty(self) {
  record({
    "name": pretty(self.name),
    "partial": pretty(self.partial),
    "members": pretty(self.members),
    "inheritance": pretty(self.inheritance),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for InterfaceMixin with pretty(self) {
  record({
    "name": pretty(self.name),
    "partial": pretty(self.partial),
    "members": pretty(self.members),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Namespace with pretty(self) {
  record({
    "name": pretty(self.name),
    "partial": pretty(self.partial),
    "members": pretty(self.members),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Callback with pretty(self) {
  record({
    "name": pretty(self.name),
    "idl_type": pretty(self.idl_type),
    "arguments": pretty(self.arguments),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Dictionary with pretty(self) {
  record({
    "name": pretty(self.name),
    "partial": pretty(self.partial),
    "members": pretty(self.members),
    "inheritance": pretty(self.inheritance),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for DictionaryField with pretty(self) {
  record({
    "name": pretty(self.name),
    "required": pretty(self.required),
    "idl_type": pretty(self.idl_type),
    "attrs": pretty(self.attrs),
    "default": pretty(self.default),
  })
}

///|
pub impl Pretty for Enum with pretty(self) {
  record({
    "name": pretty(self.name),
    "values": pretty(self.values),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Typedef with pretty(self) {
  record({
    "name": pretty(self.name),
    "idl_type": pretty(self.idl_type),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Includes with pretty(self) {
  record({
    "target": pretty(self.target),
    "includes": pretty(self.includes),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Operation with pretty(self) {
  record({
    "name": pretty(self.name),
    "idl_type": pretty(self.idl_type),
    "arguments": pretty(self.arguments),
    "special": pretty(self.special),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for OperationKind with pretty(self) {
  match self {
    Regular => ctor("Regular", [])
    Static => ctor("Static", [])
    Getter => ctor("Getter", [])
    Setter => ctor("Setter", [])
    Deleter => ctor("Deleter", [])
    Stringifier => ctor("Stringifier", [])
  }
}

///|
pub impl Pretty for Constructor with pretty(self) {
  record({ "arguments": pretty(self.arguments), "attrs": pretty(self.attrs) })
}

///|
pub impl Pretty for Attribute with pretty(self) {
  record({
    "name": pretty(self.name),
    "special": pretty(self.special),
    "readonly": pretty(self.readonly_),
    "idl_type": pretty(self.idl_type),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for AttributeKind with pretty(self) {
  match self {
    Regular => ctor("Regular", [])
    Static => ctor("Static", [])
    Stringifier => ctor("Stringifier", [])
    Inherit => ctor("Inherit", [])
  }
}

///|
pub impl Pretty for Const with pretty(self) {
  record({
    "name": pretty(self.name),
    "idl_type": pretty(self.idl_type),
    "value": pretty(self.value),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Argument with pretty(self) {
  record({
    "name": pretty(self.name),
    "idl_type": pretty(self.idl_type),
    "optional": pretty(self.optional),
    "variadic": pretty(self.variadic),
    "default": pretty(self.default),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for MapLike with pretty(self) {
  record({
    "idl_type": pretty(self.idl_type),
    "readonly": pretty(self.readonly_),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for Iterable with pretty(self) {
  record({
    "idl_type": pretty(self.idl_type),
    "opt_type": pretty(self.opt_type),
    "async": pretty(self.async_),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for AsyncIterable with pretty(self) {
  record({
    "idl_type": pretty(self.idl_type),
    "opt_type": pretty(self.opt_type),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for SetLike with pretty(self) {
  record({
    "idl_type": pretty(self.idl_type),
    "readonly": pretty(self.readonly_),
    "attrs": pretty(self.attrs),
  })
}

///|
pub impl Pretty for ExtAttr with pretty(self) {
  record({ "name": pretty(self.name), "rhs": pretty(self.rhs) })
}

///|
pub impl Pretty for Rhs with pretty(self) {
  match self {
    NoArgs => ctor("NoArgs", [])
    ArgList(args) => ctor("ArgList", [pretty(args)])
    Ident(id) => ctor("Ident", [pretty(id)])
    String(s) => ctor("String", [pretty(s)])
    Integer(s) => ctor("Integer", [pretty(s)])
    Decimal(s) => ctor("Decimal", [pretty(s)])
    WildCard => ctor("WildCard", [])
    IdentList(ids) => ctor("IdentList", [pretty(ids)])
    IntegerList(ints) => ctor("IntegerList", [pretty(ints)])
    NamedArgList(id, args) => ctor("NamedArgList", [pretty(id), pretty(args)])
  }
}

///|
pub impl Pretty for Value with pretty(self) {
  match self {
    Decimal(s) => ctor("Decimal", [pretty(s)])
    Undefined => ctor("Undefined", [])
    String(s) => ctor("String", [pretty(s)])
    Number(s) => ctor("Number", [pretty(s)])
    Boolean(b) => ctor("Boolean", [pretty(b)])
    Null => ctor("Null", [])
    Infinity(negative~) =>
      ctor("Infinity", [], labeled={ "nagative": pretty(negative) })
    NaN => ctor("NaN", [])
    Sequence => ctor("Sequence", [])
    Dictionary => ctor("Dictionary", [])
  }
}

///|
pub impl Pretty for IDLTypeWithExtAttr with pretty(self) {
  record({ "attrs": pretty(self.attrs), "ty": pretty(self.ty) })
}

///|
pub impl Pretty for IDLType with pretty(self) {
  match self {
    Integer(it) => ctor("Integer", [pretty(it)])
    String(st) => ctor("String", [pretty(st)])
    Floating(ft) => ctor("Floating", [pretty(ft)])
    Nullable(t) => ctor("Nullable", [pretty(t)])
    Union(ts) => ctor("Union", [pretty(ts)])
    Id(id) => ctor("Id", [pretty(id)])
    ArrayBuffer => ctor("ArrayBuffer", [])
    SharedArrayBuffer => ctor("SharedArrayBuffer", [])
    DataView => ctor("DataView", [])
    Int8Array => ctor("Int8Array", [])
    Int16Array => ctor("Int16Array", [])
    Int32Array => ctor("Int32Array", [])
    Uint8Array => ctor("Uint8Array", [])
    Uint16Array => ctor("Uint16Array", [])
    Uint32Array => ctor("Uint32Array", [])
    Uint8ClampedArray => ctor("Uint8ClampedArray", [])
    BigInt64Array => ctor("BigInt64Array", [])
    BigUint64Array => ctor("BigUint64Array", [])
    Float16Array => ctor("Float16Array", [])
    Float32Array => ctor("Float32Array", [])
    Float64Array => ctor("Float64Array", [])
    Boolean => ctor("Boolean", [])
    Byte => ctor("Byte", [])
    Octet => ctor("Octet", [])
    Bigint => ctor("Bigint", [])
    Object => ctor("Object", [])
    Identifer => ctor("Identifer", [])
    Symbol => ctor("Symbol", [])
    Undefined => ctor("Undefined", [])
    Promise(t) => ctor("Promise", [pretty(t)])
    Record(k, v) => ctor("Record", [pretty(k), pretty(v)])
    Sequence(t) => ctor("Sequence", [pretty(t)])
    AsyncSequence(t) => ctor("AsyncSequence", [pretty(t)])
    FrozenArray(t) => ctor("FrozenArray", [pretty(t)])
    ObservableArray(t) => ctor("ObservableArray", [pretty(t)])
    Any => ctor("Any", [])
  }
}

///|
pub impl Pretty for FloatingType with pretty(self) {
  match self {
    Float => ctor("Float", [])
    Double => ctor("Double", [])
    Unrestricted(ft) => ctor("Unrestricted", [pretty(ft)])
  }
}

///|
pub impl Pretty for StringType with pretty(self) {
  match self {
    ByteString => ctor("ByteString", [])
    DOMString => ctor("DOMString", [])
    USVString => ctor("USVString", [])
  }
}

///|
pub impl Pretty for IntegerType with pretty(self) {
  match self {
    Long => ctor("Long", [])
    Short => ctor("Short", [])
    LongLong => ctor("LongLong", [])
    Unsigned(x) => ctor("Unsigned", [pretty(x)])
  }
}
