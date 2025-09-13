///|
fn make_nullable(bool : Bool, ty : IDLType) -> IDLType {
  if bool {
    Nullable(ty)
  } else {
    ty
  }
}

///|
fn make_with_attrs(ty : IDLType) -> IDLTypeWithExtAttr {
  { attrs: @list.empty(), ty }
}

///|
fn Member::set_attrs(self : Self, attrs : ExtAttrs) -> Self {
  match self {
    Operation(rcd) => Operation({ ..rcd, attrs, })
    Constructor(rcd) => Constructor({ ..rcd, attrs, })
    Attribute(rcd) => Attribute({ ..rcd, attrs, })
    Const(rcd) => Const({ ..rcd, attrs, })
    Iterable(rcd) => Iterable({ ..rcd, attrs, })
    AsyncIterable(rcd) => AsyncIterable({ ..rcd, attrs, })
    MapLike(rcd) => MapLike({ ..rcd, attrs, })
    SetLike(rcd) => SetLike({ ..rcd, attrs, })
  }
}

///|
fn Definition::set_attrs(self : Self, attrs : ExtAttrs) -> Self {
  match self {
    Interface(rcd) => Interface({ ..rcd, attrs, })
    InterfaceMixin(rcd) => InterfaceMixin({ ..rcd, attrs, })
    Namespace(rcd) => Namespace({ ..rcd, attrs, })
    Callback(rcd) => Callback({ ..rcd, attrs, })
    Dictionary(rcd) => Dictionary({ ..rcd, attrs, })
    Enum(rcd) => Enum({ ..rcd, attrs, })
    Typedef(rcd) => Typedef({ ..rcd, attrs, })
    Includes(rcd) => Includes({ ..rcd, attrs, })
  }
}

///|
fn Member::set_readonly(self : Self, readonly_ : Bool) -> Self {
  match self {
    Attribute(rcd) => Attribute({ ..rcd, readonly_, })
    MapLike(rcd) => MapLike({ ..rcd, readonly_, })
    SetLike(rcd) => SetLike({ ..rcd, readonly_, })
    AsyncIterable(_) | Const(_) | Constructor(_) | Operation(_) | Iterable(_) =>
      self
  }
}

///|
fn Member::set_static(self : Self) -> Self {
  match self {
    Operation(rcd) => Operation({ ..rcd, special: Static })
    Attribute(rcd) => Attribute({ ..rcd, special: Static })
    _ => self
  }
}

///|
fn make_ext_attr(name : Id, rhs : Rhs) -> ExtAttr {
  { name, rhs }
}
