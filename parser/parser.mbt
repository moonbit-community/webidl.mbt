///|
pub suberror ParseError {
  UnexpectedToken(Token, (Unit, Unit), Array[TokenKind])
  UnexpectedEndOfInput(Unit, Array[TokenKind])
}

///|
typealias Error as YYObj

///|
priv suberror YYObj_Void

///|
priv suberror YYObj_Id Id

///|
priv suberror YYObj_Bool Bool

///|
priv suberror YYObj_Enum Enum

///|
priv suberror YYObj_List_Id_ List[Id]

///|
priv suberror YYObj_List_Member_ List[Member]

///|
priv suberror YYObj_List_String_ List[String]

///|
priv suberror YYObj_List_Argument_ List[Argument]

///|
priv suberror YYObj_List_Definition_ List[Definition]

///|
priv suberror YYObj_List_DictionaryField_ List[DictionaryField]

///|
priv suberror YYObj_List_IDLTypeWithExtAttr_ List[IDLTypeWithExtAttr]

///|
priv suberror YYObj_Unit Unit

///|
priv suberror YYObj_Const Const

///|
priv suberror YYObj_Value Value

///|
priv suberror YYObj_Member Member

///|
priv suberror YYObj_String String

///|
priv suberror YYObj_ExtAttr ExtAttr

///|
priv suberror YYObj_IDLType IDLType

///|
priv suberror YYObj_MapLike MapLike

///|
priv suberror YYObj_SetLike SetLike

///|
priv suberror YYObj_Typedef Typedef

///|
priv suberror YYObj_Argument Argument

///|
priv suberror YYObj_Callback Callback

///|
priv suberror YYObj_ExtAttrs ExtAttrs

///|
priv suberror YYObj_Includes Includes

///|
priv suberror YYObj_Iterable Iterable

///|
priv suberror YYObj_Attribute Attribute

///|
priv suberror YYObj_Interface Interface

///|
priv suberror YYObj_Namespace Namespace

///|
priv suberror YYObj_Operation Operation

///|
priv suberror YYObj_Definition Definition

///|
priv suberror YYObj_Dictionary Dictionary

///|
priv suberror YYObj_StringType StringType

///|
priv suberror YYObj_Constructor Constructor

///|
priv suberror YYObj_IntegerType IntegerType

///|
priv suberror YYObj_FloatingType FloatingType

///|
priv suberror YYObj_OperationKind OperationKind

///|
priv suberror YYObj_InterfaceMixin InterfaceMixin

///|
priv suberror YYObj_DictionaryField DictionaryField

///|
priv suberror YYObj_IDLTypeWithExtAttr IDLTypeWithExtAttr

///|
priv suberror YYObj_Id_ Id?

///|
priv suberror YYObj_List_Argument__ List[Argument]?

///|
priv suberror YYObj_Value_ Value?

///|
priv suberror YYObj_String_ String?

///|
priv suberror YYObj_IDLTypeWithExtAttr_ IDLTypeWithExtAttr?

///|
typealias (YYSymbol) -> YYDecision as YYState

///|
typealias (Unit, ArrayView[(YYObj, Unit, Unit)]) -> YYObj as YYAction

///|
priv enum YYDecision {
  Accept
  Shift(YYState)
  Reduce(Int, YYSymbol, YYAction)
  ReduceNoLookahead(Int, YYSymbol, YYAction)
  Error
}

///|
priv enum YYSymbol {
  T_INT
  T_ID
  T_STRING
  T_DECIMAL
  T_ATTRIBUTE
  T_CALLBACK
  T_CONST
  T_CONSTRUCTOR
  T_DELETER
  T_DICTIONARY
  T_ENUM
  T_GETTER
  T_INCLUDES
  T_INHERIT
  T_INTERFACE
  T_ITERABLE
  T_MAPLIKE
  T_MIXIN
  T_NAMESPACE
  T_PARTIAL
  T_READONLY
  T_REQUIRED
  T_SETLIKE
  T_SETTER
  T_STATIC
  T_STRINGIFIER
  T_TYPEDEF
  T_UNRESTRICTED
  T_ARRAYBUFFER
  T_SHAREDARRAYBUFFER
  T_DATAVIEW
  T_INT8ARRAY
  T_INT16ARRAY
  T_INT32ARRAY
  T_UINT8ARRAY
  T_UINT16ARRAY
  T_UINT32ARRAY
  T_UINT8CLAMPEDARRAY
  T_BIGINT64ARRAY
  T_BIGUINT64ARRAY
  T_FLOAT16ARRAY
  T_FLOAT32ARRAY
  T_FLOAT64ARRAY
  T_BYTESTRING
  T_DOMSTRING
  T_USVSTRING
  T_FROZENARRAY
  T_INFINITY
  T_NEGINFINITY
  T_NAN
  T_OBSERVABLEARRAY
  T_PROMISE
  T_ANY
  T_BIGINT
  T_BOOLEAN
  T_BYTE
  T_DOUBLE
  T_FLOAT
  T_LONG
  T_OBJECT
  T_OCTET
  T_RECORD
  T_SEQUENCE
  T_SHORT
  T_SYMBOL
  T_UNSIGNED
  T_ASYNCITERABLE
  T_ASYNCSEQUENCE
  T_FALSE
  T_TRUE
  T_NULL
  T_UNDEFINED
  T_MINUS
  T_DOT
  T_ELLIPS
  T_COLON
  T_SEMI
  T_LT
  T_EQUAL
  T_GT
  T_QUESTION
  T_STAR
  T_OR
  T_OPTIONAL
  T_LBRACE
  T_RBRACE
  T_LPAREN
  T_RPAREN
  T_LBRACKET
  T_RBRACKET
  T_COMMA
  T_EOF
  NT_definitions
  NT_definition
  NT_argumentNameKeyword
  NT_callbackOrInterfaceOrMixin
  NT_interfaceOrMixin
  NT_interfaceRest
  NT_partial
  NT_partialDefinition
  NT_partialInterfaceOrPartialMixin
  NT_partialInterfaceRest
  NT_interfaceMembers
  NT_interfaceMember
  NT_partialInterfaceMembers
  NT_partialInterfaceMember
  NT_inheritanceance
  NT_mixinRest
  NT_mixinMembers
  NT_mixinMember
  NT_includesStatement
  NT_callbackRestOrInterface
  NT_callbackInterfaceMembers
  NT_callbackInterfaceMember
  NT_const_
  NT_constValue
  NT_booleanLiteral
  NT_floatLiteral
  NT_constType
  NT_readOnlyMember
  NT_readOnlyMemberRest
  NT_readWriteAttribute
  NT_inheritanceAttribute
  NT_attributeRest
  NT_attributeName
  NT_attributeNameKeyword
  NT_optionalReadOnly
  NT_defaultValue
  NT_operation
  NT_regularOperation
  NT_specialOperation
  NT_special
  NT_operationRest
  NT_optionalOperationName
  NT_operationName
  NT_operationNameKeyword
  NT_argumentList
  NT_arguments
  NT_argument
  NT_argumentRest
  NT_argumentName
  NT_ellipsis
  NT_constructor
  NT_stringifier
  NT_stringifierRest
  NT_staticMember
  NT_staticMemberRest
  NT_iterable
  NT_optionalType
  NT_asyncIterable
  NT_optionalArgumentList
  NT_readWriteMaplike
  NT_maplikeRest
  NT_readWriteSetlike
  NT_setlikeRest
  NT_namespace
  NT_namespaceMembers
  NT_namespaceMember
  NT_dictionary
  NT_dictionaryMembers
  NT_dictionaryMember
  NT_dictionaryMemberRest
  NT_partialDictionary
  NT_default
  NT_enum_
  NT_enumValueList
  NT_enumValueListComma
  NT_enumValueListString
  NT_callbackRest
  NT_typedef
  NT_type_
  NT_typeWithExtendedAttributes
  NT_singleType
  NT_unionType
  NT_unionMemberType
  NT_unionMemberTypes
  NT_distinguishableType
  NT_primitiveType
  NT_unrestrictedFloatType
  NT_floatType
  NT_unsignedIntegerType
  NT_integerType
  NT_optionalLong
  NT_stringType
  NT_promiseType
  NT_recordType
  NT_null_
  NT_bufferRelatedType
  NT_extendedAttributeList
  NT_extendedAttributes
  NT_extendedAttribute
  NT_identifierList
  NT_identifiers
  NT_integerList
  NT_integers
  NT_extendedAttributeNoArgs
  NT_extendedAttributeArgList
  NT_extendedAttributeIdent
  NT_extendedAttributeString
  NT_extendedAttributeInteger
  NT_extendedAttributeDecimal
  NT_extendedAttributeWildcard
  NT_extendedAttributeIdentList
  NT_extendedAttributeIntegerList
  NT_extendedAttributeNamedArgList
  EOI
}

// Workaround for EOI unused warning

///|
fn init {
  match (EOI : YYSymbol) {
    EOI => ()
    _ => ()
  }
}

// file:///./parser.mbty
// 109|    extendedAttributeList definition definitions { $3.add($2.set_attrs($1)) }

///|
fn yy_action_0(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Definition_(_dollar3)
  guard _args[1].0 is YYObj_Definition(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Definition_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 114|    callbackOrInterfaceOrMixin { $1 }

///|
fn yy_action_1(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Definition(_dollar1)
  YYObj_Definition(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 115|    namespace                  { Namespace($1) }

///|
fn yy_action_2(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Namespace(_dollar1)
  YYObj_Definition(
    {
      ()
      Namespace(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 116|    partial                    { $1 }

///|
fn yy_action_3(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Definition(_dollar1)
  YYObj_Definition(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 117|    dictionary                 { Dictionary($1) }

///|
fn yy_action_4(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Dictionary(_dollar1)
  YYObj_Definition(
    {
      ()
      Dictionary(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 118|    enum_                      { Enum($1) }

///|
fn yy_action_5(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Enum(_dollar1)
  YYObj_Definition(
    {
      ()
      Enum(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 119|    typedef                    { Typedef($1) }

///|
fn yy_action_6(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Typedef(_dollar1)
  YYObj_Definition(
    {
      ()
      Typedef(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 120|    includesStatement          { Includes($1) }

///|
fn yy_action_7(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Includes(_dollar1)
  YYObj_Definition(
    {
      ()
      Includes(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 151|    "callback" callbackRestOrInterface { $2 }

///|
fn yy_action_8(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Definition(_dollar2)
  YYObj_Definition(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 246|    callbackRest                                        { Callback($1) }

///|
fn yy_action_9(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Callback(_dollar1)
  YYObj_Definition(
    {
      ()
      Callback(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 247|    "interface" ID "{" callbackInterfaceMembers "}" ";" { 
// 248|      Interface({ name: $2, members: $4, partial: false, inheritance: None, attrs: @list.empty() }) 
// 249|    }

///|
fn yy_action_10(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_List_Member_(_dollar4)
  YYObj_Definition(
    {
      ()
      Interface({
        name: _dollar2,
        members: _dollar4,
        partial: false,
        inheritance: None,
        attrs: @list.empty(),
      })
    },
  )
}

// file:///./parser.mbty
// 253|    extendedAttributeList callbackInterfaceMember callbackInterfaceMembers { 
// 254|      $3.add($2.set_attrs($1)) 
// 255|    }

///|
fn yy_action_11(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  guard _args[1].0 is YYObj_Member(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Member_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 260|    const_           { Const($1) }

///|
fn yy_action_12(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Const(_dollar1)
  YYObj_Member(
    {
      ()
      Const(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 261|    regularOperation { Operation($1) }

///|
fn yy_action_13(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Member(
    {
      ()
      Operation(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 256|    { @list.empty() }

///|
fn yy_action_14(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Member_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 553|    ID "=" type_ "(" argumentList ")" ";" { { name: $1, idl_type: $3, arguments: $5, attrs: @list.empty() } }

///|
fn yy_action_15(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_IDLType(_dollar3)
  guard _args[4].0 is YYObj_List_Argument_(_dollar5)
  YYObj_Callback(
    {
      ()
      {
        name: _dollar1,
        idl_type: _dollar3,
        arguments: _dollar5,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 152|    "interface" interfaceOrMixin { $2 }

///|
fn yy_action_16(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Definition(_dollar2)
  YYObj_Definition(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 156|    interfaceRest { Interface($1) }

///|
fn yy_action_17(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Interface(_dollar1)
  YYObj_Definition(
    {
      ()
      Interface(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 157|    mixinRest     { InterfaceMixin($1) }

///|
fn yy_action_18(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_InterfaceMixin(_dollar1)
  YYObj_Definition(
    {
      ()
      InterfaceMixin(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 161|    ID inheritanceance "{" interfaceMembers "}" ";" { 
// 162|      { name: $1, inheritance: $2, members: $4, partial: false, attrs: @list.empty() } 
// 163|    }

///|
fn yy_action_19(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[1].0 is YYObj_Id_(_dollar2)
  guard _args[3].0 is YYObj_List_Member_(_dollar4)
  YYObj_Interface(
    {
      ()
      {
        name: _dollar1,
        inheritance: _dollar2,
        members: _dollar4,
        partial: false,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 188|    extendedAttributeList interfaceMember interfaceMembers { $3.add($2.set_attrs($1)) }

///|
fn yy_action_20(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  guard _args[1].0 is YYObj_Member(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Member_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 193|    partialInterfaceMember { $1 }

///|
fn yy_action_21(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Member(_dollar1)
  YYObj_Member(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 194|    constructor            { Constructor($1) }

///|
fn yy_action_22(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Constructor(_dollar1)
  YYObj_Member(
    {
      ()
      Constructor(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 413|    "constructor" "(" argumentList ")" ";" { { arguments: $3, attrs: @list.empty() } }

///|
fn yy_action_23(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Argument_(_dollar3)
  YYObj_Constructor(
    {
      ()
      { arguments: _dollar3, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 189|                                                           { @list.empty() }

///|
fn yy_action_24(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Member_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 167|    "partial" partialDefinition { $2 }

///|
fn yy_action_25(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Definition(_dollar2)
  YYObj_Definition(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 171|    "interface" partialInterfaceOrPartialMixin { $2 }

///|
fn yy_action_26(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Definition(_dollar2)
  YYObj_Definition(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 177|    partialInterfaceRest { Interface($1) }

///|
fn yy_action_27(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Interface(_dollar1)
  YYObj_Definition(
    {
      ()
      Interface(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 178|    mixinRest            { InterfaceMixin({ ..$1, partial: true }) }

///|
fn yy_action_28(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_InterfaceMixin(_dollar1)
  YYObj_Definition(
    {
      ()
      InterfaceMixin({ .._dollar1, partial: true })
    },
  )
}

// file:///./parser.mbty
// 182|    ID "{" partialInterfaceMembers "}" ";" { 
// 183|      { name: $1, partial: true, members: $3, inheritance: None, attrs: @list.empty() } 
// 184|    }

///|
fn yy_action_29(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  YYObj_Interface(
    {
      ()
      {
        name: _dollar1,
        partial: true,
        members: _dollar3,
        inheritance: None,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 198|    extendedAttributeList partialInterfaceMember partialInterfaceMembers { 
// 199|      $3.add($2.set_attrs($1)) 
// 200|    }

///|
fn yy_action_30(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  guard _args[1].0 is YYObj_Member(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Member_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 205|    const_             { Const($1) }

///|
fn yy_action_31(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Const(_dollar1)
  YYObj_Member(
    {
      ()
      Const(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 206|    operation          { Operation($1) }

///|
fn yy_action_32(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Member(
    {
      ()
      Operation(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 207|    stringifier        { $1 }

///|
fn yy_action_33(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Member(_dollar1)
  YYObj_Member(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 208|    staticMember       { $1 }

///|
fn yy_action_34(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Member(_dollar1)
  YYObj_Member(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 209|    iterable           { Iterable($1) }

///|
fn yy_action_35(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Iterable(_dollar1)
  YYObj_Member(
    {
      ()
      Iterable(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 210|    asyncIterable      { Iterable($1) }

///|
fn yy_action_36(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Iterable(_dollar1)
  YYObj_Member(
    {
      ()
      Iterable(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 211|    readOnlyMember     { $1 }

///|
fn yy_action_37(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Member(_dollar1)
  YYObj_Member(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 212|    readWriteAttribute { Attribute($1) }

///|
fn yy_action_38(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Attribute(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 213|    readWriteMaplike   { MapLike($1) }

///|
fn yy_action_39(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_MapLike(_dollar1)
  YYObj_Member(
    {
      ()
      MapLike(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 214|    readWriteSetlike   { SetLike($1) }

///|
fn yy_action_40(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_SetLike(_dollar1)
  YYObj_Member(
    {
      ()
      SetLike(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 215|    inheritanceAttribute   { Attribute($1) }

///|
fn yy_action_41(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Attribute(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 294|    "readonly" readOnlyMemberRest { $2.set_readonly(true) }

///|
fn yy_action_42(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Member(_dollar2)
  YYObj_Member(
    {
      ()
      _dollar2.set_readonly(true)
    },
  )
}

// file:///./parser.mbty
// 298|    attributeRest { Attribute($1) }

///|
fn yy_action_43(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Attribute(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 299|    maplikeRest   { MapLike($1) }

///|
fn yy_action_44(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_MapLike(_dollar1)
  YYObj_Member(
    {
      ()
      MapLike(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 300|    setlikeRest   { SetLike($1) }

///|
fn yy_action_45(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_SetLike(_dollar1)
  YYObj_Member(
    {
      ()
      SetLike(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 304|    attributeRest { $1 }

///|
fn yy_action_46(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Attribute(_dollar1)
  YYObj_Attribute(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 308|    "inheritance" attributeRest { { ..$2, special: Inherit } }

///|
fn yy_action_47(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Attribute(_dollar2)
  YYObj_Attribute(
    {
      ()
      { .._dollar2, special: Inherit }
    },
  )
}

// file:///./parser.mbty
// 341|    regularOperation { $1 }

///|
fn yy_action_48(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Operation(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 342|    specialOperation { $1 }

///|
fn yy_action_49(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Operation(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 350|    special regularOperation { { ..$2, special: $1 } }

///|
fn yy_action_50(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Operation(_dollar2)
  guard _args[0].0 is YYObj_OperationKind(_dollar1)
  YYObj_Operation(
    {
      ()
      { .._dollar2, special: _dollar1 }
    },
  )
}

// file:///./parser.mbty
// 354|    "getter"  { Getter }

///|
fn yy_action_51(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_OperationKind(
    {
      ()
      Getter
    },
  )
}

// file:///./parser.mbty
// 355|    "setter"  { Setter }

///|
fn yy_action_52(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_OperationKind(
    {
      ()
      Setter
    },
  )
}

// file:///./parser.mbty
// 356|    "deleter" { Deleter }

///|
fn yy_action_53(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_OperationKind(
    {
      ()
      Deleter
    },
  )
}

// file:///./parser.mbty
// 434|    "static" staticMemberRest { $2.set_static() }

///|
fn yy_action_54(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Member(_dollar2)
  YYObj_Member(
    {
      ()
      _dollar2.set_static()
    },
  )
}

// file:///./parser.mbty
// 438|    optionalReadOnly attributeRest { Attribute({ ..$2, readonly_: $1 }) }

///|
fn yy_action_55(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Attribute(_dollar2)
  guard _args[0].0 is YYObj_Bool(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute({ .._dollar2, readonly_: _dollar1 })
    },
  )
}

// file:///./parser.mbty
// 439|    regularOperation               { Operation($1) }

///|
fn yy_action_56(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Member(
    {
      ()
      Operation(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 443|    "iterable" "<" typeWithExtendedAttributes optionalType ">" ";" { 
// 444|      { idl_type: $3, async_: false, opt_type: $4, attrs: @list.empty() } 
// 445|    }

///|
fn yy_action_57(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  guard _args[3].0 is YYObj_IDLTypeWithExtAttr_(_dollar4)
  YYObj_Iterable(
    {
      ()
      {
        idl_type: _dollar3,
        async_: false,
        opt_type: _dollar4,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 449|    "," typeWithExtendedAttributes { Some($2) }

///|
fn yy_action_58(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_IDLTypeWithExtAttr_(
    {
      ()
      Some(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 454|    "async_iterable" "<" typeWithExtendedAttributes optionalType ">" optionalArgumentList ";" { panic() }

///|
fn yy_action_59(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Iterable(
    {
      ()
      panic()
    },
  )
}

// file:///./parser.mbty
// 458|    "(" argumentList ")" { Some($2) }

///|
fn yy_action_60(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_Argument_(_dollar2)
  YYObj_List_Argument__(
    {
      ()
      Some(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 459|                         { None }

///|
fn yy_action_61(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Argument__(
    {
      ()
      None
    },
  )
}

// file:///./parser.mbty
// 450|    { None }

///|
fn yy_action_62(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLTypeWithExtAttr_(
    {
      ()
      None
    },
  )
}

// file:///./parser.mbty
// 463|    maplikeRest { $1 }

///|
fn yy_action_63(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_MapLike(_dollar1)
  YYObj_MapLike(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 467|    "maplike" "<" typeWithExtendedAttributes "," typeWithExtendedAttributes ">" ";" { 
// 468|      { idl_type: $3, readonly_: false, attrs: @list.empty() }  
// 469|    }

///|
fn yy_action_64(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_MapLike(
    {
      ()
      { idl_type: _dollar3, readonly_: false, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 473|    setlikeRest { $1 }

///|
fn yy_action_65(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_SetLike(_dollar1)
  YYObj_SetLike(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 477|    "setlike" "<" typeWithExtendedAttributes ">" ";" { 
// 478|      { idl_type: $3, readonly_: false, attrs: @list.empty() }
// 479|    }

///|
fn yy_action_66(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_SetLike(
    {
      ()
      { idl_type: _dollar3, readonly_: false, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 201|    { @list.empty() }

///|
fn yy_action_67(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Member_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 224|    "mixin" ID "{" mixinMembers "}" ";" { 
// 225|      { name: $2, members: $4, partial: false, attrs: @list.empty() } 
// 226|    }

///|
fn yy_action_68(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_List_Member_(_dollar4)
  YYObj_InterfaceMixin(
    {
      ()
      {
        name: _dollar2,
        members: _dollar4,
        partial: false,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 230|    extendedAttributeList mixinMember mixinMembers { $3.add($2.set_attrs($1)) }

///|
fn yy_action_69(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  guard _args[1].0 is YYObj_Member(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Member_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 235|    const_                         { Const($1) }

///|
fn yy_action_70(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Const(_dollar1)
  YYObj_Member(
    {
      ()
      Const(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 236|    regularOperation               { Operation($1) }

///|
fn yy_action_71(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Member(
    {
      ()
      Operation(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 237|    stringifier                    { $1 }

///|
fn yy_action_72(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Member(_dollar1)
  YYObj_Member(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 238|    optionalReadOnly attributeRest { Attribute({ ..$2, readonly_: $1 }) }

///|
fn yy_action_73(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Attribute(_dollar2)
  guard _args[0].0 is YYObj_Bool(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute({ .._dollar2, readonly_: _dollar1 })
    },
  )
}

// file:///./parser.mbty
// 327|    "readonly" { true }

///|
fn yy_action_74(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      true
    },
  )
}

// file:///./parser.mbty
// 417|    "stringifier" stringifierRest { $2 }

///|
fn yy_action_75(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Member(_dollar2)
  YYObj_Member(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 421|    optionalReadOnly attributeRest { Attribute({ ..$2, readonly_: $1 }) }

///|
fn yy_action_76(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Attribute(_dollar2)
  guard _args[0].0 is YYObj_Bool(_dollar1)
  YYObj_Member(
    {
      ()
      Attribute({ .._dollar2, readonly_: _dollar1 })
    },
  )
}

// file:///./parser.mbty
// 422|    ";" { 
// 423|      Operation({ 
// 424|        special: Stringifier, 
// 425|        idl_type: None, 
// 426|        name: None, 
// 427|        arguments: @list.empty(), 
// 428|        attrs: @list.empty(),
// 429|      }) 
// 430|    }

///|
fn yy_action_77(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Member(
    {
      ()
      Operation({
        special: Stringifier,
        idl_type: None,
        name: None,
        arguments: @list.empty(),
        attrs: @list.empty(),
      })
    },
  )
}

// file:///./parser.mbty
// 328|               { false }

///|
fn yy_action_78(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      false
    },
  )
}

// file:///./parser.mbty
// 231|                                                   { @list.empty() }

///|
fn yy_action_79(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Member_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 172|    partialDictionary { Dictionary($1) }

///|
fn yy_action_80(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Dictionary(_dollar1)
  YYObj_Definition(
    {
      ()
      Dictionary(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 173|    namespace { Namespace($1) }

///|
fn yy_action_81(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Namespace(_dollar1)
  YYObj_Definition(
    {
      ()
      Namespace(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 524|    "dictionary" ID "{" dictionaryMembers "}" ";" { 
// 525|      { name: $2, members: $4, inheritance: None, partial: false, attrs: @list.empty() } 
// 526|    }

///|
fn yy_action_82(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_List_DictionaryField_(_dollar4)
  YYObj_Dictionary(
    {
      ()
      {
        name: _dollar2,
        members: _dollar4,
        inheritance: None,
        partial: false,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 242|    ID "includes" ID ";" { { target: $1, includes: $3, attrs: @list.empty() } }

///|
fn yy_action_83(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_Includes(
    {
      ()
      { target: _dollar1, includes: _dollar3, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 483|    "namespace" ID "{" namespaceMembers "}" ";" { 
// 484|      { name: $2, partial: false, members: $4, attrs: @list.empty() } 
// 485|    }

///|
fn yy_action_84(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_List_Member_(_dollar4)
  YYObj_Namespace(
    {
      ()
      {
        name: _dollar2,
        partial: false,
        members: _dollar4,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 265|    "const" constType ID "=" constValue ";" { 
// 266|      { name: $3, idl_type: $2, value: $5, attrs: @list.empty() } 
// 267|    }

///|
fn yy_action_85(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[1].0 is YYObj_IDLType(_dollar2)
  guard _args[4].0 is YYObj_Value(_dollar5)
  YYObj_Const(
    {
      ()
      {
        name: _dollar3,
        idl_type: _dollar2,
        value: _dollar5,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 289|    primitiveType { $1 }

///|
fn yy_action_86(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 290|    ID            { Id($1) }

///|
fn yy_action_87(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_IDLType(
    {
      ()
      Id(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 346|    type_ operationRest { { ..$2, idl_type: Some($1) } }

///|
fn yy_action_88(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Operation(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_Operation(
    {
      ()
      { .._dollar2, idl_type: Some(_dollar1) }
    },
  )
}

// file:///./parser.mbty
// 360|    optionalOperationName "(" argumentList ")" ";" { 
// 361|      { special: Regular, idl_type: None, name: $1, arguments: $3, attrs: @list.empty() }
// 362|    }

///|
fn yy_action_89(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String_(_dollar1)
  guard _args[2].0 is YYObj_List_Argument_(_dollar3)
  YYObj_Operation(
    {
      ()
      {
        special: Regular,
        idl_type: None,
        name: _dollar1,
        arguments: _dollar3,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 366|    operationName { Some($1) }

///|
fn yy_action_90(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String_(
    {
      ()
      Some(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 371|    operationNameKeyword { $1 }

///|
fn yy_action_91(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 372|    ID                   { $1 }

///|
fn yy_action_92(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 376|    "includes" { "includes" }

///|
fn yy_action_93(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "includes"
    },
  )
}

// file:///./parser.mbty
// 367|                  { None }

///|
fn yy_action_94(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String_(
    {
      ()
      None
    },
  )
}

// file:///./parser.mbty
// 489|    extendedAttributeList namespaceMember namespaceMembers { $3.add($2.set_attrs($1)) }

///|
fn yy_action_95(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Member_(_dollar3)
  guard _args[1].0 is YYObj_Member(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_List_Member_(
    {
      ()
      _dollar3.add(_dollar2.set_attrs(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 494|    regularOperation         { Operation($1) }

///|
fn yy_action_96(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Operation(_dollar1)
  YYObj_Member(
    {
      ()
      Operation(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 312|    "attribute" typeWithExtendedAttributes attributeName ";" { 
// 313|      { name: $3, special: Regular, readonly_: false, idl_type: $2, attrs: @list.empty() } 
// 314|    }

///|
fn yy_action_97(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_Attribute(
    {
      ()
      {
        name: _dollar3,
        special: Regular,
        readonly_: false,
        idl_type: _dollar2,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 318|    attributeNameKeyword { $1 }

///|
fn yy_action_98(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 319|    ID                   { $1 }

///|
fn yy_action_99(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_String(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 323|    "required" { "required" }

///|
fn yy_action_100(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "required"
    },
  )
}

// file:///./parser.mbty
// 495|    "readonly" attributeRest { Attribute({ ..$2, readonly_: true }) }

///|
fn yy_action_101(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Attribute(_dollar2)
  YYObj_Member(
    {
      ()
      Attribute({ .._dollar2, readonly_: true })
    },
  )
}

// file:///./parser.mbty
// 496|    const_                   { Const($1) }

///|
fn yy_action_102(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Const(_dollar1)
  YYObj_Member(
    {
      ()
      Const(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 490|                                                           { @list.empty() }

///|
fn yy_action_103(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Member_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 219|    ":" ID { Some($2) }

///|
fn yy_action_104(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  YYObj_Id_(
    {
      ()
      Some(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 500|    "dictionary" ID inheritanceance "{" dictionaryMembers "}" ";" { 
// 501|      { name: $2, inheritance: $3, members: $5, attrs: @list.empty(), partial: false } 
// 502|    }

///|
fn yy_action_105(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[2].0 is YYObj_Id_(_dollar3)
  guard _args[4].0 is YYObj_List_DictionaryField_(_dollar5)
  YYObj_Dictionary(
    {
      ()
      {
        name: _dollar2,
        inheritance: _dollar3,
        members: _dollar5,
        attrs: @list.empty(),
        partial: false,
      }
    },
  )
}

// file:///./parser.mbty
// 506|    dictionaryMember dictionaryMembers { $2.add($1) }

///|
fn yy_action_106(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_DictionaryField_(_dollar2)
  guard _args[0].0 is YYObj_DictionaryField(_dollar1)
  YYObj_List_DictionaryField_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 511|    extendedAttributeList dictionaryMemberRest { { ..$2, attrs: $1 } }

///|
fn yy_action_107(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_DictionaryField(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_DictionaryField(
    {
      ()
      { .._dollar2, attrs: _dollar1 }
    },
  )
}

// file:///./parser.mbty
// 515|    "required" typeWithExtendedAttributes ID ";" { 
// 516|      { name: $3, required: true, idl_type: $2, default: None, attrs: @list.empty() } 
// 517|    }

///|
fn yy_action_108(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_DictionaryField(
    {
      ()
      {
        name: _dollar3,
        required: true,
        idl_type: _dollar2,
        default: None,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 518|    type_ ID default ";" { 
// 519|      { name: $2, required: false, idl_type: make_with_attrs($1), default: $3, attrs: @list.empty() } 
// 520|    }

///|
fn yy_action_109(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  guard _args[2].0 is YYObj_Value_(_dollar3)
  YYObj_DictionaryField(
    {
      ()
      {
        name: _dollar2,
        required: false,
        idl_type: make_with_attrs(_dollar1),
        default: _dollar3,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 507|                                       { @list.empty() }

///|
fn yy_action_110(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_DictionaryField_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 220|           { None }

///|
fn yy_action_111(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Id_(
    {
      ()
      None
    },
  )
}

// file:///./parser.mbty
// 535|    "enum" ID "{" enumValueList "}" ";" { { name: $2, values: $4, attrs: @list.empty() } }

///|
fn yy_action_112(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_List_String_(_dollar4)
  YYObj_Enum(
    {
      ()
      { name: _dollar2, values: _dollar4, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 539|    STRING enumValueListComma { $2.add($1) }

///|
fn yy_action_113(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_String_(_dollar2)
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_List_String_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 543|    "," enumValueListString  { $2 }

///|
fn yy_action_114(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_String_(_dollar2)
  YYObj_List_String_(
    {
      ()
      _dollar2
    },
  )
}

// file:///./parser.mbty
// 548|    STRING enumValueListComma { $2.add($1) }

///|
fn yy_action_115(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_String_(_dollar2)
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_List_String_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 549|                              { @list.empty() }

///|
fn yy_action_116(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_String_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 544|                             { @list.empty() }

///|
fn yy_action_117(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_String_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 557|    "typedef" typeWithExtendedAttributes ID ";" { { name: $3, idl_type: $2, attrs: @list.empty() } }

///|
fn yy_action_118(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_Typedef(
    {
      ()
      { name: _dollar3, idl_type: _dollar2, attrs: @list.empty() }
    },
  )
}

// file:///./parser.mbty
// 110|    EOF                                          { @list.empty() }

///|
fn yy_action_119(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Definition_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 682|    "[" extendedAttribute extendedAttributes "]" { $3.add($2) }

///|
fn yy_action_120(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_ExtAttrs(_dollar3)
  guard _args[1].0 is YYObj_ExtAttr(_dollar2)
  YYObj_ExtAttrs(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 687|    "," extendedAttribute extendedAttributes { $3.add($2) }

///|
fn yy_action_121(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_ExtAttrs(_dollar3)
  guard _args[1].0 is YYObj_ExtAttr(_dollar2)
  YYObj_ExtAttrs(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 688|                                             { @list.empty() }

///|
fn yy_action_122(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_ExtAttrs(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 698|    extendedAttributeNoArgs       { $1 }

///|
fn yy_action_123(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 699|    extendedAttributeArgList      { $1 }

///|
fn yy_action_124(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 700|    extendedAttributeIdent        { $1 }

///|
fn yy_action_125(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 701|    extendedAttributeString       { $1 }

///|
fn yy_action_126(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 702|    extendedAttributeInteger      { $1 }

///|
fn yy_action_127(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 703|    extendedAttributeDecimal      { $1 }

///|
fn yy_action_128(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 704|    extendedAttributeWildcard     { $1 }

///|
fn yy_action_129(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 705|    extendedAttributeIdentList    { $1 }

///|
fn yy_action_130(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 706|    extendedAttributeIntegerList  { $1 }

///|
fn yy_action_131(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 707|    extendedAttributeNamedArgList { $1 }

///|
fn yy_action_132(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttr(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 725|                                      ID "(" argumentList ")"             { make_ext_attr($1, ArgList($3)) }

///|
fn yy_action_133(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_List_Argument_(_dollar3)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, ArgList(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 380|    argument arguments { $2.add($1) }

///|
fn yy_action_134(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_Argument_(_dollar2)
  guard _args[0].0 is YYObj_Argument(_dollar1)
  YYObj_List_Argument_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 385|    "," argument arguments { $3.add($2) }

///|
fn yy_action_135(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Argument_(_dollar3)
  guard _args[1].0 is YYObj_Argument(_dollar2)
  YYObj_List_Argument_(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 386|                           { @list.empty() }

///|
fn yy_action_136(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Argument_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 390|    extendedAttributeList argumentRest { { ..$2, attrs: $1 } }

///|
fn yy_action_137(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Argument(_dollar2)
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  YYObj_Argument(
    {
      ()
      { .._dollar2, attrs: _dollar1 }
    },
  )
}

// file:///./parser.mbty
// 394|    "optional" typeWithExtendedAttributes argumentName default { 
// 395|      { name: $3, idl_type: $2, default: $4, optional: true, variadic: false, attrs: @list.empty() } 
// 396|    }

///|
fn yy_action_138(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_Id(_dollar3)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  guard _args[3].0 is YYObj_Value_(_dollar4)
  YYObj_Argument(
    {
      ()
      {
        name: _dollar3,
        idl_type: _dollar2,
        default: _dollar4,
        optional: true,
        variadic: false,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 271|    booleanLiteral { Boolean($1) }

///|
fn yy_action_139(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Bool(_dollar1)
  YYObj_Value(
    {
      ()
      Boolean(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 272|    floatLiteral   { $1 }

///|
fn yy_action_140(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Value(_dollar1)
  YYObj_Value(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 273|    INT            { Number($1) }

///|
fn yy_action_141(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Value(
    {
      ()
      Number(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 277|    "true" { true }

///|
fn yy_action_142(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      true
    },
  )
}

// file:///./parser.mbty
// 278|    "false" { false }

///|
fn yy_action_143(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      false
    },
  )
}

// file:///./parser.mbty
// 282|    DECIMAL     { Decimal($1) }

///|
fn yy_action_144(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Value(
    {
      ()
      Decimal(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 283|    "-Infinity" { Infinity(negative=true) }

///|
fn yy_action_145(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Infinity(negative=true)
    },
  )
}

// file:///./parser.mbty
// 284|    "Infinity"  { Infinity(negative=false) }

///|
fn yy_action_146(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Infinity(negative=false)
    },
  )
}

// file:///./parser.mbty
// 285|    "NaN"       { NaN }

///|
fn yy_action_147(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      NaN
    },
  )
}

// file:///./parser.mbty
// 332|    constValue  { $1 }

///|
fn yy_action_148(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_Value(_dollar1)
  YYObj_Value(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 333|    STRING      { String($1) }

///|
fn yy_action_149(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Value(
    {
      ()
      String(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 334|    "[" "]"     { Sequence }

///|
fn yy_action_150(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Sequence
    },
  )
}

// file:///./parser.mbty
// 335|    "{" "}"     { Dictionary }

///|
fn yy_action_151(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Dictionary
    },
  )
}

// file:///./parser.mbty
// 336|    "null"      { Null }

///|
fn yy_action_152(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Null
    },
  )
}

// file:///./parser.mbty
// 337|    "undefined" { Undefined }

///|
fn yy_action_153(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value(
    {
      ()
      Undefined
    },
  )
}

// file:///./parser.mbty
// 530|    "=" defaultValue { Some($2) }

///|
fn yy_action_154(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Value(_dollar2)
  YYObj_Value_(
    {
      ()
      Some(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 531|                     { None }

///|
fn yy_action_155(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Value_(
    {
      ()
      None
    },
  )
}

// file:///./parser.mbty
// 124|    "attribute"    { "attribute" }

///|
fn yy_action_156(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "attribute"
    },
  )
}

// file:///./parser.mbty
// 125|    "callback"     { "callback" }

///|
fn yy_action_157(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "callback"
    },
  )
}

// file:///./parser.mbty
// 126|    "const"        { "const" }

///|
fn yy_action_158(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "const"
    },
  )
}

// file:///./parser.mbty
// 127|    "constructor"  { "constructor" }

///|
fn yy_action_159(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "constructor"
    },
  )
}

// file:///./parser.mbty
// 128|    "deleter"      { "deleter" }

///|
fn yy_action_160(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "deleter"
    },
  )
}

// file:///./parser.mbty
// 129|    "dictionary"   { "dictionary" }

///|
fn yy_action_161(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "dictionary"
    },
  )
}

// file:///./parser.mbty
// 130|    "enum"         { "enum" }

///|
fn yy_action_162(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "enum"
    },
  )
}

// file:///./parser.mbty
// 131|    "getter"       { "getter" }

///|
fn yy_action_163(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "getter"
    },
  )
}

// file:///./parser.mbty
// 132|    "includes"     { "includes" }

///|
fn yy_action_164(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "includes"
    },
  )
}

// file:///./parser.mbty
// 133|    "inheritance"      { "inheritance" }

///|
fn yy_action_165(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "inheritance"
    },
  )
}

// file:///./parser.mbty
// 134|    "interface"    { "interface" }

///|
fn yy_action_166(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "interface"
    },
  )
}

// file:///./parser.mbty
// 135|    "iterable"     { "iterable" }

///|
fn yy_action_167(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "iterable"
    },
  )
}

// file:///./parser.mbty
// 136|    "maplike"      { "maplike" }

///|
fn yy_action_168(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "maplike"
    },
  )
}

// file:///./parser.mbty
// 137|    "mixin"        { "mixin" }

///|
fn yy_action_169(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "mixin"
    },
  )
}

// file:///./parser.mbty
// 138|    "namespace"    { "namespace" }

///|
fn yy_action_170(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "namespace"
    },
  )
}

// file:///./parser.mbty
// 139|    "partial"      { "partial" }

///|
fn yy_action_171(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "partial"
    },
  )
}

// file:///./parser.mbty
// 140|    "readonly"     { "readonly" }

///|
fn yy_action_172(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "readonly"
    },
  )
}

// file:///./parser.mbty
// 141|    "required"     { "required" }

///|
fn yy_action_173(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "required"
    },
  )
}

// file:///./parser.mbty
// 142|    "setlike"      { "setlike" }

///|
fn yy_action_174(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "setlike"
    },
  )
}

// file:///./parser.mbty
// 143|    "setter"       { "setter" }

///|
fn yy_action_175(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "setter"
    },
  )
}

// file:///./parser.mbty
// 144|    "static"       { "static" }

///|
fn yy_action_176(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "static"
    },
  )
}

// file:///./parser.mbty
// 145|    "stringifier"  { "stringifier" }

///|
fn yy_action_177(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "stringifier"
    },
  )
}

// file:///./parser.mbty
// 146|    "typedef"      { "typedef" }

///|
fn yy_action_178(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "typedef"
    },
  )
}

// file:///./parser.mbty
// 147|    "unrestricted" { "unrestricted" }

///|
fn yy_action_179(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_String(
    {
      ()
      "unrestricted"
    },
  )
}

// file:///./parser.mbty
// 397|    type_ ellipsis argumentName { 
// 398|      { name: $3, idl_type: make_with_attrs($1), default: None, optional: false, variadic: true, attrs: @list.empty() }  
// 399|    }

///|
fn yy_action_180(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_Id(_dollar3)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_Argument(
    {
      ()
      {
        name: _dollar3,
        idl_type: make_with_attrs(_dollar1),
        default: None,
        optional: false,
        variadic: true,
        attrs: @list.empty(),
      }
    },
  )
}

// file:///./parser.mbty
// 403|    argumentNameKeyword { $1 }

///|
fn yy_action_181(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Id(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 404|    ID                  { $1 }

///|
fn yy_action_182(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Id(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 408|    "..." {}

///|
fn yy_action_183(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Unit(())
}

// file:///./parser.mbty
// 409|          {}

///|
fn yy_action_184(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Unit(())
}

// file:///./parser.mbty
// 566|    extendedAttributeList type_ { { attrs: $1, ty: $2 } }

///|
fn yy_action_185(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  guard _args[1].0 is YYObj_IDLType(_dollar2)
  YYObj_IDLTypeWithExtAttr(
    {
      ()
      { attrs: _dollar1, ty: _dollar2 }
    },
  )
}

// file:///./parser.mbty
// 561|    singleType      { $1 }

///|
fn yy_action_186(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 562|    unionType null_ { make_nullable($2, $1) }

///|
fn yy_action_187(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, _dollar1)
    },
  )
}

// file:///./parser.mbty
// 570|    distinguishableType { $1 }

///|
fn yy_action_188(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 571|    "any"               { Any }

///|
fn yy_action_189(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Any
    },
  )
}

// file:///./parser.mbty
// 572|    promiseType         { $1 }

///|
fn yy_action_190(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 576|    "(" unionMemberType "or" unionMemberType unionMemberTypes ")" { 
// 577|    Union($5.add($4).add($2)) 
// 578|  }

///|
fn yy_action_191(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[4].0 is YYObj_List_IDLTypeWithExtAttr_(_dollar5)
  guard _args[3].0 is YYObj_IDLTypeWithExtAttr(_dollar4)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_IDLType(
    {
      ()
      Union(_dollar5.add(_dollar4).add(_dollar2))
    },
  )
}

// file:///./parser.mbty
// 590|    "or" unionMemberType unionMemberTypes { $3.add($2) }

///|
fn yy_action_192(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_IDLTypeWithExtAttr_(_dollar3)
  guard _args[1].0 is YYObj_IDLTypeWithExtAttr(_dollar2)
  YYObj_List_IDLTypeWithExtAttr_(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 591|    { @list.empty() }

///|
fn yy_action_193(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_IDLTypeWithExtAttr_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 582|    extendedAttributeList distinguishableType { { attrs: $1, ty: $2 } }

///|
fn yy_action_194(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_ExtAttrs(_dollar1)
  guard _args[1].0 is YYObj_IDLType(_dollar2)
  YYObj_IDLTypeWithExtAttr(
    {
      ()
      { attrs: _dollar1, ty: _dollar2 }
    },
  )
}

// file:///./parser.mbty
// 583|    unionType null_ { 
// 584|    let ty = if $2 { IDLType::Nullable($1) } else { $1 }
// 585|    { attrs: @list.empty(), ty }
// 586|  }

///|
fn yy_action_195(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLTypeWithExtAttr(
    {
      ()
      let ty = if _dollar2 { IDLType::Nullable(_dollar1) } else { _dollar1 }
      { attrs: @list.empty(), ty }
    },
  )
}

// file:///./parser.mbty
// 595|    primitiveType null_                                        { make_nullable($2, $1) }

///|
fn yy_action_196(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, _dollar1)
    },
  )
}

// file:///./parser.mbty
// 596|    stringType null_                                           { make_nullable($2, String($1)) }

///|
fn yy_action_197(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_StringType(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, String(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 597|    ID null_                                                   { make_nullable($2, Id($1)) }

///|
fn yy_action_198(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, Id(_dollar1))
    },
  )
}

// file:///./parser.mbty
// 598|    "sequence" "<" typeWithExtendedAttributes ">" null_        { make_nullable($5, Sequence($3)) }

///|
fn yy_action_199(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[4].0 is YYObj_Bool(_dollar5)
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar5, Sequence(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 599|    "async_sequence" "<" typeWithExtendedAttributes ">" null_  { make_nullable($5, AsyncSequence($3)) }

///|
fn yy_action_200(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[4].0 is YYObj_Bool(_dollar5)
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar5, AsyncSequence(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 600|    "object" null_                                             { make_nullable($2, Object) }

///|
fn yy_action_201(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, Object)
    },
  )
}

// file:///./parser.mbty
// 601|    "symbol" null_                                             { make_nullable($2, Symbol) }

///|
fn yy_action_202(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, Symbol)
    },
  )
}

// file:///./parser.mbty
// 602|    bufferRelatedType null_                                    { make_nullable($2, $1) }

///|
fn yy_action_203(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, _dollar1)
    },
  )
}

// file:///./parser.mbty
// 603|    "FrozenArray" "<" typeWithExtendedAttributes ">" null_     { make_nullable($5, FrozenArray($3)) }

///|
fn yy_action_204(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[4].0 is YYObj_Bool(_dollar5)
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar5, FrozenArray(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 604|    "ObservableArray" "<" typeWithExtendedAttributes ">" null_ { make_nullable($5, ObservableArray($3)) }

///|
fn yy_action_205(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[4].0 is YYObj_Bool(_dollar5)
  guard _args[2].0 is YYObj_IDLTypeWithExtAttr(_dollar3)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar5, ObservableArray(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 605|    recordType null_                                           { make_nullable($2, $1) }

///|
fn yy_action_206(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  guard _args[0].0 is YYObj_IDLType(_dollar1)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, _dollar1)
    },
  )
}

// file:///./parser.mbty
// 606|    "undefined" null_                                          { make_nullable($2, Undefined) }

///|
fn yy_action_207(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  YYObj_IDLType(
    {
      ()
      make_nullable(_dollar2, Undefined)
    },
  )
}

// file:///./parser.mbty
// 659|    "?" { true }

///|
fn yy_action_208(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      true
    },
  )
}

// file:///./parser.mbty
// 660|        { false }

///|
fn yy_action_209(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      false
    },
  )
}

// file:///./parser.mbty
// 610|    unsignedIntegerType   { Integer($1) }

///|
fn yy_action_210(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IntegerType(_dollar1)
  YYObj_IDLType(
    {
      ()
      Integer(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 611|    unrestrictedFloatType { Floating($1) }

///|
fn yy_action_211(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_FloatingType(_dollar1)
  YYObj_IDLType(
    {
      ()
      Floating(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 612|    "boolean"             { Boolean }

///|
fn yy_action_212(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Boolean
    },
  )
}

// file:///./parser.mbty
// 613|    "byte"                { Byte }

///|
fn yy_action_213(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Byte
    },
  )
}

// file:///./parser.mbty
// 614|    "octet"               { Octet }

///|
fn yy_action_214(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Octet
    },
  )
}

// file:///./parser.mbty
// 615|    "bigint"              { Bigint }

///|
fn yy_action_215(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Bigint
    },
  )
}

// file:///./parser.mbty
// 619|    "unrestricted" floatType { Unrestricted($2) }

///|
fn yy_action_216(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_FloatingType(_dollar2)
  YYObj_FloatingType(
    {
      ()
      Unrestricted(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 620|    floatType                { $1 }

///|
fn yy_action_217(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_FloatingType(_dollar1)
  YYObj_FloatingType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 625|    "float"  { Float }

///|
fn yy_action_218(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_FloatingType(
    {
      ()
      Float
    },
  )
}

// file:///./parser.mbty
// 626|    "double" { Double }

///|
fn yy_action_219(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_FloatingType(
    {
      ()
      Double
    },
  )
}

// file:///./parser.mbty
// 630|    "unsigned" integerType { Unsigned($2) }

///|
fn yy_action_220(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_IntegerType(_dollar2)
  YYObj_IntegerType(
    {
      ()
      Unsigned(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 631|    integerType            { $1 }

///|
fn yy_action_221(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_IntegerType(_dollar1)
  YYObj_IntegerType(
    {
      ()
      _dollar1
    },
  )
}

// file:///./parser.mbty
// 635|    "short"             { Short }

///|
fn yy_action_222(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IntegerType(
    {
      ()
      Short
    },
  )
}

// file:///./parser.mbty
// 636|    "long" optionalLong { if $2 { LongLong } else { Long } }

///|
fn yy_action_223(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_Bool(_dollar2)
  YYObj_IntegerType(
    {
      ()
      if _dollar2 {
        LongLong
      } else {
        Long
      }
    },
  )
}

// file:///./parser.mbty
// 640|    "long" { true }

///|
fn yy_action_224(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      true
    },
  )
}

// file:///./parser.mbty
// 641|           { false }

///|
fn yy_action_225(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_Bool(
    {
      ()
      false
    },
  )
}

// file:///./parser.mbty
// 645|    "ByteString" { ByteString }

///|
fn yy_action_226(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_StringType(
    {
      ()
      ByteString
    },
  )
}

// file:///./parser.mbty
// 646|    "DOMString"  { DOMString }

///|
fn yy_action_227(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_StringType(
    {
      ()
      DOMString
    },
  )
}

// file:///./parser.mbty
// 647|    "USVString"  { USVString }

///|
fn yy_action_228(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_StringType(
    {
      ()
      USVString
    },
  )
}

// file:///./parser.mbty
// 651|    "Promise" "<" type_ ">" { Promise($3) }

///|
fn yy_action_229(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_IDLType(_dollar3)
  YYObj_IDLType(
    {
      ()
      Promise(_dollar3)
    },
  )
}

// file:///./parser.mbty
// 655|    "record" "<" stringType "," typeWithExtendedAttributes ">" { Record($3,$5) }

///|
fn yy_action_230(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_StringType(_dollar3)
  guard _args[4].0 is YYObj_IDLTypeWithExtAttr(_dollar5)
  YYObj_IDLType(
    {
      ()
      Record(_dollar3, _dollar5)
    },
  )
}

// file:///./parser.mbty
// 664|    "ArrayBuffer"       { ArrayBuffer }

///|
fn yy_action_231(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      ArrayBuffer
    },
  )
}

// file:///./parser.mbty
// 665|    "SharedArrayBuffer" { SharedArrayBuffer }

///|
fn yy_action_232(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      SharedArrayBuffer
    },
  )
}

// file:///./parser.mbty
// 666|    "DataView"          { DataView }

///|
fn yy_action_233(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      DataView
    },
  )
}

// file:///./parser.mbty
// 667|    "Int8Array"         { Int8Array }

///|
fn yy_action_234(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Int8Array
    },
  )
}

// file:///./parser.mbty
// 668|    "Int16Array"        { Int16Array }

///|
fn yy_action_235(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Int16Array
    },
  )
}

// file:///./parser.mbty
// 669|    "Int32Array"        { Int32Array }

///|
fn yy_action_236(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Int32Array
    },
  )
}

// file:///./parser.mbty
// 670|    "Uint8Array"        { Uint8Array }

///|
fn yy_action_237(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Uint8Array
    },
  )
}

// file:///./parser.mbty
// 671|    "Uint16Array"       { Uint16Array }

///|
fn yy_action_238(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Uint16Array
    },
  )
}

// file:///./parser.mbty
// 672|    "Uint32Array"       { Uint32Array }

///|
fn yy_action_239(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Uint32Array
    },
  )
}

// file:///./parser.mbty
// 673|    "Uint8ClampedArray" { Uint8ClampedArray }

///|
fn yy_action_240(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Uint8ClampedArray
    },
  )
}

// file:///./parser.mbty
// 674|    "BigInt64Array"     { BigInt64Array }

///|
fn yy_action_241(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      BigInt64Array
    },
  )
}

// file:///./parser.mbty
// 675|    "BigUint64Array"    { BigUint64Array }

///|
fn yy_action_242(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      BigUint64Array
    },
  )
}

// file:///./parser.mbty
// 676|    "Float16Array"      { Float16Array }

///|
fn yy_action_243(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Float16Array
    },
  )
}

// file:///./parser.mbty
// 677|    "Float32Array"      { Float32Array }

///|
fn yy_action_244(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Float32Array
    },
  )
}

// file:///./parser.mbty
// 678|    "Float64Array"      { Float64Array }

///|
fn yy_action_245(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_IDLType(
    {
      ()
      Float64Array
    },
  )
}

// file:///./parser.mbty
// 741|                                           ID "=" ID "(" argumentList ")" { make_ext_attr($1, NamedArgList($3,$5)) }

///|
fn yy_action_246(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_List_Argument_(_dollar5)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, NamedArgList(_dollar3, _dollar5))
    },
  )
}

// file:///./parser.mbty
// 381|                       { @list.empty() }

///|
fn yy_action_247(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Argument_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 727|                                    ID "=" ID                             { make_ext_attr($1, Ident($3)) }

///|
fn yy_action_248(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, Ident(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 729|                                     ID "=" STRING                        { make_ext_attr($1, String($3)) }

///|
fn yy_action_249(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, String(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 731|                                      ID "=" INT                          { make_ext_attr($1, Integer($3)) }

///|
fn yy_action_250(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, Integer(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 733|                                      ID "=" DECIMAL                      { make_ext_attr($1, Decimal($3)) }

///|
fn yy_action_251(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, Decimal(_dollar3))
    },
  )
}

// file:///./parser.mbty
// 735|                                       ID "=" "*"                         { make_ext_attr($1, WildCard ) }

///|
fn yy_action_252(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, WildCard)
    },
  )
}

// file:///./parser.mbty
// 710|    ID identifiers { $2.add($1) }

///|
fn yy_action_253(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_Id_(_dollar2)
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_List_Id_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 713|    "," ID identifiers { $3.add($2) }

///|
fn yy_action_254(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_Id_(_dollar3)
  guard _args[1].0 is YYObj_String(_dollar2)
  YYObj_List_Id_(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 714|                       { @list.empty() }

///|
fn yy_action_255(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_Id_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 717|    INT integers { $2.add($1) }

///|
fn yy_action_256(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[1].0 is YYObj_List_String_(_dollar2)
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_List_String_(
    {
      ()
      _dollar2.add(_dollar1)
    },
  )
}

// file:///./parser.mbty
// 720|    "," INT integers { $3.add($2) }

///|
fn yy_action_257(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[2].0 is YYObj_List_String_(_dollar3)
  guard _args[1].0 is YYObj_String(_dollar2)
  YYObj_List_String_(
    {
      ()
      _dollar3.add(_dollar2)
    },
  )
}

// file:///./parser.mbty
// 721|                     { @list.empty() }

///|
fn yy_action_258(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_List_String_(
    {
      ()
      @list.empty()
    },
  )
}

// file:///./parser.mbty
// 737|                                        ID "=" "(" identifierList ")"     { make_ext_attr($1, IdentList($4)) }

///|
fn yy_action_259(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[3].0 is YYObj_List_Id_(_dollar4)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, IdentList(_dollar4))
    },
  )
}

// file:///./parser.mbty
// 739|                                          ID "=" "(" integerList ")"      { make_ext_attr($1, IntegerList($4)) }

///|
fn yy_action_260(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[3].0 is YYObj_List_String_(_dollar4)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, IntegerList(_dollar4))
    },
  )
}

// file:///./parser.mbty
// 723|                                     ID                                   { make_ext_attr($1, NoArgs) }

///|
fn yy_action_261(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ExtAttr(
    {
      ()
      make_ext_attr(_dollar1, NoArgs)
    },
  )
}

// file:///./parser.mbty
// 683|                                                 { @list.empty() }

///|
fn yy_action_262(
  _last_pos : Unit,
  _args : ArrayView[(YYObj, Unit, Unit)],
) -> YYObj {
  YYObj_ExtAttrs(
    {
      ()
      @list.empty()
    },
  )
}

///|
fn yy_input(
  token : Token,
  _start_pos : Unit,
  _end_pos : Unit,
) -> (YYSymbol, YYObj) {
  match token {
    INT(data) => (T_INT, YYObj_String(data))
    ID(data) => (T_ID, YYObj_String(data))
    STRING(data) => (T_STRING, YYObj_String(data))
    DECIMAL(data) => (T_DECIMAL, YYObj_String(data))
    ATTRIBUTE => (T_ATTRIBUTE, YYObj_Void)
    CALLBACK => (T_CALLBACK, YYObj_Void)
    CONST => (T_CONST, YYObj_Void)
    CONSTRUCTOR => (T_CONSTRUCTOR, YYObj_Void)
    DELETER => (T_DELETER, YYObj_Void)
    DICTIONARY => (T_DICTIONARY, YYObj_Void)
    ENUM => (T_ENUM, YYObj_Void)
    GETTER => (T_GETTER, YYObj_Void)
    INCLUDES => (T_INCLUDES, YYObj_Void)
    INHERIT => (T_INHERIT, YYObj_Void)
    INTERFACE => (T_INTERFACE, YYObj_Void)
    ITERABLE => (T_ITERABLE, YYObj_Void)
    MAPLIKE => (T_MAPLIKE, YYObj_Void)
    MIXIN => (T_MIXIN, YYObj_Void)
    NAMESPACE => (T_NAMESPACE, YYObj_Void)
    PARTIAL => (T_PARTIAL, YYObj_Void)
    READONLY => (T_READONLY, YYObj_Void)
    REQUIRED => (T_REQUIRED, YYObj_Void)
    SETLIKE => (T_SETLIKE, YYObj_Void)
    SETTER => (T_SETTER, YYObj_Void)
    STATIC => (T_STATIC, YYObj_Void)
    STRINGIFIER => (T_STRINGIFIER, YYObj_Void)
    TYPEDEF => (T_TYPEDEF, YYObj_Void)
    UNRESTRICTED => (T_UNRESTRICTED, YYObj_Void)
    ARRAYBUFFER => (T_ARRAYBUFFER, YYObj_Void)
    SHAREDARRAYBUFFER => (T_SHAREDARRAYBUFFER, YYObj_Void)
    DATAVIEW => (T_DATAVIEW, YYObj_Void)
    INT8ARRAY => (T_INT8ARRAY, YYObj_Void)
    INT16ARRAY => (T_INT16ARRAY, YYObj_Void)
    INT32ARRAY => (T_INT32ARRAY, YYObj_Void)
    UINT8ARRAY => (T_UINT8ARRAY, YYObj_Void)
    UINT16ARRAY => (T_UINT16ARRAY, YYObj_Void)
    UINT32ARRAY => (T_UINT32ARRAY, YYObj_Void)
    UINT8CLAMPEDARRAY => (T_UINT8CLAMPEDARRAY, YYObj_Void)
    BIGINT64ARRAY => (T_BIGINT64ARRAY, YYObj_Void)
    BIGUINT64ARRAY => (T_BIGUINT64ARRAY, YYObj_Void)
    FLOAT16ARRAY => (T_FLOAT16ARRAY, YYObj_Void)
    FLOAT32ARRAY => (T_FLOAT32ARRAY, YYObj_Void)
    FLOAT64ARRAY => (T_FLOAT64ARRAY, YYObj_Void)
    BYTESTRING => (T_BYTESTRING, YYObj_Void)
    DOMSTRING => (T_DOMSTRING, YYObj_Void)
    USVSTRING => (T_USVSTRING, YYObj_Void)
    FROZENARRAY => (T_FROZENARRAY, YYObj_Void)
    INFINITY => (T_INFINITY, YYObj_Void)
    NEGINFINITY => (T_NEGINFINITY, YYObj_Void)
    NAN => (T_NAN, YYObj_Void)
    OBSERVABLEARRAY => (T_OBSERVABLEARRAY, YYObj_Void)
    PROMISE => (T_PROMISE, YYObj_Void)
    ANY => (T_ANY, YYObj_Void)
    BIGINT => (T_BIGINT, YYObj_Void)
    BOOLEAN => (T_BOOLEAN, YYObj_Void)
    BYTE => (T_BYTE, YYObj_Void)
    DOUBLE => (T_DOUBLE, YYObj_Void)
    FLOAT => (T_FLOAT, YYObj_Void)
    LONG => (T_LONG, YYObj_Void)
    OBJECT => (T_OBJECT, YYObj_Void)
    OCTET => (T_OCTET, YYObj_Void)
    RECORD => (T_RECORD, YYObj_Void)
    SEQUENCE => (T_SEQUENCE, YYObj_Void)
    SHORT => (T_SHORT, YYObj_Void)
    SYMBOL => (T_SYMBOL, YYObj_Void)
    UNSIGNED => (T_UNSIGNED, YYObj_Void)
    ASYNCITERABLE => (T_ASYNCITERABLE, YYObj_Void)
    ASYNCSEQUENCE => (T_ASYNCSEQUENCE, YYObj_Void)
    FALSE => (T_FALSE, YYObj_Void)
    TRUE => (T_TRUE, YYObj_Void)
    NULL => (T_NULL, YYObj_Void)
    UNDEFINED => (T_UNDEFINED, YYObj_Void)
    MINUS => (T_MINUS, YYObj_Void)
    DOT => (T_DOT, YYObj_Void)
    ELLIPS => (T_ELLIPS, YYObj_Void)
    COLON => (T_COLON, YYObj_Void)
    SEMI => (T_SEMI, YYObj_Void)
    LT => (T_LT, YYObj_Void)
    EQUAL => (T_EQUAL, YYObj_Void)
    GT => (T_GT, YYObj_Void)
    QUESTION => (T_QUESTION, YYObj_Void)
    STAR => (T_STAR, YYObj_Void)
    OR => (T_OR, YYObj_Void)
    OPTIONAL => (T_OPTIONAL, YYObj_Void)
    LBRACE => (T_LBRACE, YYObj_Void)
    RBRACE => (T_RBRACE, YYObj_Void)
    LPAREN => (T_LPAREN, YYObj_Void)
    RPAREN => (T_RPAREN, YYObj_Void)
    LBRACKET => (T_LBRACKET, YYObj_Void)
    RBRACKET => (T_RBRACKET, YYObj_Void)
    COMMA => (T_COMMA, YYObj_Void)
    EOF => (T_EOF, YYObj_Void)
  }
}

///|
fn yy_state_0(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_definitions => Shift(yy_state_1)
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_211)
    NT_extendedAttributeList => Shift(yy_state_212)
    T_ID
    | T_CALLBACK
    | T_DICTIONARY
    | T_ENUM
    | T_INTERFACE
    | T_NAMESPACE
    | T_PARTIAL
    | T_TYPEDEF => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

///|
fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_3)
    NT_extendedAttributeNamedArgList => Shift(yy_state_195)
    NT_extendedAttributeIntegerList => Shift(yy_state_196)
    NT_extendedAttributeIdentList => Shift(yy_state_197)
    NT_extendedAttributeWildcard => Shift(yy_state_198)
    NT_extendedAttributeDecimal => Shift(yy_state_199)
    NT_extendedAttributeInteger => Shift(yy_state_200)
    NT_extendedAttributeString => Shift(yy_state_201)
    NT_extendedAttributeIdent => Shift(yy_state_202)
    NT_extendedAttributeArgList => Shift(yy_state_203)
    NT_extendedAttributeNoArgs => Shift(yy_state_204)
    NT_extendedAttribute => Shift(yy_state_205)
    _ => Error
  }
}

///|
fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_4)
    T_LPAREN => Shift(yy_state_192)
    T_RBRACKET | T_COMMA => Reduce(1, NT_extendedAttributeNoArgs, yy_action_261)
    _ => Error
  }
}

///|
fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_5)
    T_STAR => Shift(yy_state_20)
    T_DECIMAL => Shift(yy_state_21)
    T_INT => Shift(yy_state_22)
    T_STRING => Shift(yy_state_23)
    T_ID => Shift(yy_state_24)
    _ => Error
  }
}

///|
fn yy_state_5(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_integerList => Shift(yy_state_6)
    NT_identifierList => Shift(yy_state_8)
    T_INT => Shift(yy_state_10)
    T_ID => Shift(yy_state_15)
    _ => Error
  }
}

///|
fn yy_state_6(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_7)
    _ => Error
  }
}

///|
fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_extendedAttributeIntegerList, yy_action_260)
}

///|
fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_9)
    _ => Error
  }
}

///|
fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_extendedAttributeIdentList, yy_action_259)
}

///|
fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_11)
    NT_integers => Shift(yy_state_14)
    T_RPAREN => Reduce(0, NT_integers, yy_action_258)
    _ => Error
  }
}

///|
fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INT => Shift(yy_state_12)
    _ => Error
  }
}

///|
fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_11)
    NT_integers => Shift(yy_state_13)
    T_RPAREN => Reduce(0, NT_integers, yy_action_258)
    _ => Error
  }
}

///|
fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_integers, yy_action_257)
}

///|
fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_integerList, yy_action_256)
}

///|
fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_16)
    NT_identifiers => Shift(yy_state_19)
    T_RPAREN => Reduce(0, NT_identifiers, yy_action_255)
    _ => Error
  }
}

///|
fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_17)
    _ => Error
  }
}

///|
fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_16)
    NT_identifiers => Shift(yy_state_18)
    T_RPAREN => Reduce(0, NT_identifiers, yy_action_255)
    _ => Error
  }
}

///|
fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_identifiers, yy_action_254)
}

///|
fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_identifierList, yy_action_253)
}

///|
fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extendedAttributeWildcard, yy_action_252)
}

///|
fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extendedAttributeDecimal, yy_action_251)
}

///|
fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extendedAttributeInteger, yy_action_250)
}

///|
fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extendedAttributeString, yy_action_249)
}

///|
fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_25)
    T_RBRACKET | T_COMMA => Reduce(3, NT_extendedAttributeIdent, yy_action_248)
    _ => Error
  }
}

///|
fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_argumentList => Shift(yy_state_26)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_27)
    _ => Error
  }
}

///|
fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_extendedAttributeNamedArgList, yy_action_246)
}

///|
fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_133)
    T_OPTIONAL => Shift(yy_state_163)
    NT_argumentRest => Shift(yy_state_186)
    _ => Error
  }
}

///|
fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_245)
}

///|
fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_244)
}

///|
fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_243)
}

///|
fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_242)
}

///|
fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_241)
}

///|
fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_240)
}

///|
fn yy_state_35(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_239)
}

///|
fn yy_state_36(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_238)
}

///|
fn yy_state_37(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_237)
}

///|
fn yy_state_38(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_236)
}

///|
fn yy_state_39(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_235)
}

///|
fn yy_state_40(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_234)
}

///|
fn yy_state_41(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_233)
}

///|
fn yy_state_42(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_232)
}

///|
fn yy_state_43(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_bufferRelatedType, yy_action_231)
}

///|
fn yy_state_44(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_45)
    _ => Error
  }
}

///|
fn yy_state_45(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_stringType => Shift(yy_state_46)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    _ => Error
  }
}

///|
fn yy_state_46(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_47)
    _ => Error
  }
}

///|
fn yy_state_47(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_typeWithExtendedAttributes => Shift(yy_state_48)
    NT_extendedAttributeList => Shift(yy_state_50)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_48(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_49)
    _ => Error
  }
}

///|
fn yy_state_49(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_recordType, yy_action_230)
}

///|
fn yy_state_50(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_132)
    _ => Error
  }
}

///|
fn yy_state_51(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_52)
    _ => Error
  }
}

///|
fn yy_state_52(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    NT_type_ => Shift(yy_state_53)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    _ => Error
  }
}

///|
fn yy_state_53(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_54)
    _ => Error
  }
}

///|
fn yy_state_54(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_promiseType, yy_action_229)
}

///|
fn yy_state_55(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_stringType, yy_action_228)
}

///|
fn yy_state_56(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_stringType, yy_action_227)
}

///|
fn yy_state_57(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_stringType, yy_action_226)
}

///|
fn yy_state_58(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_59)
    NT_optionalLong => Shift(yy_state_60)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_QUESTION
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_optionalLong, yy_action_225)
    _ => Error
  }
}

///|
fn yy_state_59(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_optionalLong, yy_action_224)
}

///|
fn yy_state_60(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_integerType, yy_action_223)
}

///|
fn yy_state_61(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_integerType, yy_action_222)
}

///|
fn yy_state_62(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_unsignedIntegerType, yy_action_221)
}

///|
fn yy_state_63(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_64)
    _ => Error
  }
}

///|
fn yy_state_64(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_unsignedIntegerType, yy_action_220)
}

///|
fn yy_state_65(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatType, yy_action_219)
}

///|
fn yy_state_66(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatType, yy_action_218)
}

///|
fn yy_state_67(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_unrestrictedFloatType, yy_action_217)
}

///|
fn yy_state_68(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_69)
    _ => Error
  }
}

///|
fn yy_state_69(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_unrestrictedFloatType, yy_action_216)
}

///|
fn yy_state_70(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_215)
}

///|
fn yy_state_71(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_214)
}

///|
fn yy_state_72(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_213)
}

///|
fn yy_state_73(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_212)
}

///|
fn yy_state_74(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_211)
}

///|
fn yy_state_75(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitiveType, yy_action_210)
}

///|
fn yy_state_76(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_78)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_77(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_null_, yy_action_208)
}

///|
fn yy_state_78(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_207)
}

///|
fn yy_state_79(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_80)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_80(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_206)
}

///|
fn yy_state_81(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_82)
    _ => Error
  }
}

///|
fn yy_state_82(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_83)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_83(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_84)
    _ => Error
  }
}

///|
fn yy_state_84(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_85)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_85(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_distinguishableType, yy_action_205)
}

///|
fn yy_state_86(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_87)
    _ => Error
  }
}

///|
fn yy_state_87(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_88)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_88(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_89)
    _ => Error
  }
}

///|
fn yy_state_89(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_90)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_90(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_distinguishableType, yy_action_204)
}

///|
fn yy_state_91(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_92)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_92(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_203)
}

///|
fn yy_state_93(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_94)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_94(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_202)
}

///|
fn yy_state_95(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_96)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_96(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_201)
}

///|
fn yy_state_97(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_98)
    _ => Error
  }
}

///|
fn yy_state_98(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_99)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_99(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_100)
    _ => Error
  }
}

///|
fn yy_state_100(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_101)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_101(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_distinguishableType, yy_action_200)
}

///|
fn yy_state_102(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_103)
    _ => Error
  }
}

///|
fn yy_state_103(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_104)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_104(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_105)
    _ => Error
  }
}

///|
fn yy_state_105(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_106)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_106(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_distinguishableType, yy_action_199)
}

///|
fn yy_state_107(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_108)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_108(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_198)
}

///|
fn yy_state_109(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_110)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_110(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_197)
}

///|
fn yy_state_111(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_112)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_OR
    | T_LPAREN
    | T_RPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_112(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_distinguishableType, yy_action_196)
}

///|
fn yy_state_113(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_113)
    NT_unionType => Shift(yy_state_114)
    NT_extendedAttributeList => Shift(yy_state_116)
    NT_unionMemberType => Shift(yy_state_118)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_114(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_115)
    T_OR | T_RPAREN => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_115(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_unionMemberType, yy_action_195)
}

///|
fn yy_state_116(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    NT_distinguishableType => Shift(yy_state_117)
    _ => Error
  }
}

///|
fn yy_state_117(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_unionMemberType, yy_action_194)
}

///|
fn yy_state_118(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_119)
    _ => Error
  }
}

///|
fn yy_state_119(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_113)
    NT_unionType => Shift(yy_state_114)
    NT_extendedAttributeList => Shift(yy_state_116)
    NT_unionMemberType => Shift(yy_state_120)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_120(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_121)
    NT_unionMemberTypes => Shift(yy_state_124)
    T_RPAREN => Reduce(0, NT_unionMemberTypes, yy_action_193)
    _ => Error
  }
}

///|
fn yy_state_121(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_113)
    NT_unionType => Shift(yy_state_114)
    NT_extendedAttributeList => Shift(yy_state_116)
    NT_unionMemberType => Shift(yy_state_122)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_122(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_121)
    NT_unionMemberTypes => Shift(yy_state_123)
    T_RPAREN => Reduce(0, NT_unionMemberTypes, yy_action_193)
    _ => Error
  }
}

///|
fn yy_state_123(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_unionMemberTypes, yy_action_192)
}

///|
fn yy_state_124(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_125)
    _ => Error
  }
}

///|
fn yy_state_125(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_unionType, yy_action_191)
}

///|
fn yy_state_126(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_singleType, yy_action_190)
}

///|
fn yy_state_127(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_singleType, yy_action_189)
}

///|
fn yy_state_128(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_singleType, yy_action_188)
}

///|
fn yy_state_129(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_77)
    NT_null_ => Shift(yy_state_130)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED
    | T_ELLIPS
    | T_GT
    | T_LPAREN
    | T_COMMA => Reduce(0, NT_null_, yy_action_209)
    _ => Error
  }
}

///|
fn yy_state_130(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_type_, yy_action_187)
}

///|
fn yy_state_131(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_type_, yy_action_186)
}

///|
fn yy_state_132(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_typeWithExtendedAttributes, yy_action_185)
}

///|
fn yy_state_133(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ELLIPS => Shift(yy_state_134)
    NT_ellipsis => Shift(yy_state_135)
    T_ID
    | T_ATTRIBUTE
    | T_CALLBACK
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_DICTIONARY
    | T_ENUM
    | T_GETTER
    | T_INCLUDES
    | T_INHERIT
    | T_INTERFACE
    | T_ITERABLE
    | T_MAPLIKE
    | T_MIXIN
    | T_NAMESPACE
    | T_PARTIAL
    | T_READONLY
    | T_REQUIRED
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_TYPEDEF
    | T_UNRESTRICTED => Reduce(0, NT_ellipsis, yy_action_184)
    _ => Error
  }
}

///|
fn yy_state_134(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_ellipsis, yy_action_183)
}

///|
fn yy_state_135(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_136)
    NT_argumentNameKeyword => Shift(yy_state_137)
    NT_argumentName => Shift(yy_state_138)
    T_UNRESTRICTED => Shift(yy_state_139)
    T_TYPEDEF => Shift(yy_state_140)
    T_STRINGIFIER => Shift(yy_state_141)
    T_STATIC => Shift(yy_state_142)
    T_SETTER => Shift(yy_state_143)
    T_SETLIKE => Shift(yy_state_144)
    T_REQUIRED => Shift(yy_state_145)
    T_READONLY => Shift(yy_state_146)
    T_PARTIAL => Shift(yy_state_147)
    T_NAMESPACE => Shift(yy_state_148)
    T_MIXIN => Shift(yy_state_149)
    T_MAPLIKE => Shift(yy_state_150)
    T_ITERABLE => Shift(yy_state_151)
    T_INTERFACE => Shift(yy_state_152)
    T_INHERIT => Shift(yy_state_153)
    T_INCLUDES => Shift(yy_state_154)
    T_GETTER => Shift(yy_state_155)
    T_ENUM => Shift(yy_state_156)
    T_DICTIONARY => Shift(yy_state_157)
    T_DELETER => Shift(yy_state_158)
    T_CONSTRUCTOR => Shift(yy_state_159)
    T_CONST => Shift(yy_state_160)
    T_CALLBACK => Shift(yy_state_161)
    T_ATTRIBUTE => Shift(yy_state_162)
    _ => Error
  }
}

///|
fn yy_state_136(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentName, yy_action_182)
}

///|
fn yy_state_137(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentName, yy_action_181)
}

///|
fn yy_state_138(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_argumentRest, yy_action_180)
}

///|
fn yy_state_139(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_179)
}

///|
fn yy_state_140(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_178)
}

///|
fn yy_state_141(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_177)
}

///|
fn yy_state_142(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_176)
}

///|
fn yy_state_143(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_175)
}

///|
fn yy_state_144(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_174)
}

///|
fn yy_state_145(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_173)
}

///|
fn yy_state_146(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_172)
}

///|
fn yy_state_147(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_171)
}

///|
fn yy_state_148(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_170)
}

///|
fn yy_state_149(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_169)
}

///|
fn yy_state_150(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_168)
}

///|
fn yy_state_151(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_167)
}

///|
fn yy_state_152(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_166)
}

///|
fn yy_state_153(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_165)
}

///|
fn yy_state_154(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_164)
}

///|
fn yy_state_155(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_163)
}

///|
fn yy_state_156(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_162)
}

///|
fn yy_state_157(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_161)
}

///|
fn yy_state_158(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_160)
}

///|
fn yy_state_159(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_159)
}

///|
fn yy_state_160(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_158)
}

///|
fn yy_state_161(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_157)
}

///|
fn yy_state_162(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argumentNameKeyword, yy_action_156)
}

///|
fn yy_state_163(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_164)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_164(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_136)
    NT_argumentNameKeyword => Shift(yy_state_137)
    T_UNRESTRICTED => Shift(yy_state_139)
    T_TYPEDEF => Shift(yy_state_140)
    T_STRINGIFIER => Shift(yy_state_141)
    T_STATIC => Shift(yy_state_142)
    T_SETTER => Shift(yy_state_143)
    T_SETLIKE => Shift(yy_state_144)
    T_REQUIRED => Shift(yy_state_145)
    T_READONLY => Shift(yy_state_146)
    T_PARTIAL => Shift(yy_state_147)
    T_NAMESPACE => Shift(yy_state_148)
    T_MIXIN => Shift(yy_state_149)
    T_MAPLIKE => Shift(yy_state_150)
    T_ITERABLE => Shift(yy_state_151)
    T_INTERFACE => Shift(yy_state_152)
    T_INHERIT => Shift(yy_state_153)
    T_INCLUDES => Shift(yy_state_154)
    T_GETTER => Shift(yy_state_155)
    T_ENUM => Shift(yy_state_156)
    T_DICTIONARY => Shift(yy_state_157)
    T_DELETER => Shift(yy_state_158)
    T_CONSTRUCTOR => Shift(yy_state_159)
    T_CONST => Shift(yy_state_160)
    T_CALLBACK => Shift(yy_state_161)
    T_ATTRIBUTE => Shift(yy_state_162)
    NT_argumentName => Shift(yy_state_165)
    _ => Error
  }
}

///|
fn yy_state_165(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_166)
    NT_default => Shift(yy_state_185)
    T_RPAREN | T_COMMA => Reduce(0, NT_default, yy_action_155)
    _ => Error
  }
}

///|
fn yy_state_166(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_defaultValue => Shift(yy_state_167)
    T_UNDEFINED => Shift(yy_state_168)
    T_NULL => Shift(yy_state_169)
    T_LBRACE => Shift(yy_state_170)
    T_LBRACKET => Shift(yy_state_172)
    T_STRING => Shift(yy_state_174)
    NT_constValue => Shift(yy_state_175)
    T_NAN => Shift(yy_state_176)
    T_INFINITY => Shift(yy_state_177)
    T_NEGINFINITY => Shift(yy_state_178)
    T_DECIMAL => Shift(yy_state_179)
    T_FALSE => Shift(yy_state_180)
    T_TRUE => Shift(yy_state_181)
    T_INT => Shift(yy_state_182)
    NT_floatLiteral => Shift(yy_state_183)
    NT_booleanLiteral => Shift(yy_state_184)
    _ => Error
  }
}

///|
fn yy_state_167(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default, yy_action_154)
}

///|
fn yy_state_168(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_defaultValue, yy_action_153)
}

///|
fn yy_state_169(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_defaultValue, yy_action_152)
}

///|
fn yy_state_170(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_171)
    _ => Error
  }
}

///|
fn yy_state_171(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_defaultValue, yy_action_151)
}

///|
fn yy_state_172(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_173)
    _ => Error
  }
}

///|
fn yy_state_173(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_defaultValue, yy_action_150)
}

///|
fn yy_state_174(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_defaultValue, yy_action_149)
}

///|
fn yy_state_175(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_defaultValue, yy_action_148)
}

///|
fn yy_state_176(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatLiteral, yy_action_147)
}

///|
fn yy_state_177(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatLiteral, yy_action_146)
}

///|
fn yy_state_178(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatLiteral, yy_action_145)
}

///|
fn yy_state_179(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_floatLiteral, yy_action_144)
}

///|
fn yy_state_180(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_booleanLiteral, yy_action_143)
}

///|
fn yy_state_181(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_booleanLiteral, yy_action_142)
}

///|
fn yy_state_182(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_constValue, yy_action_141)
}

///|
fn yy_state_183(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_constValue, yy_action_140)
}

///|
fn yy_state_184(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_constValue, yy_action_139)
}

///|
fn yy_state_185(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_argumentRest, yy_action_138)
}

///|
fn yy_state_186(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argument, yy_action_137)
}

///|
fn yy_state_187(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_188)
    NT_arguments => Shift(yy_state_191)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_136)
    _ => Error
  }
}

///|
fn yy_state_188(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_189)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_189(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_188)
    NT_arguments => Shift(yy_state_190)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_136)
    _ => Error
  }
}

///|
fn yy_state_190(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_arguments, yy_action_135)
}

///|
fn yy_state_191(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argumentList, yy_action_134)
}

///|
fn yy_state_192(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    NT_argumentList => Shift(yy_state_193)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_193(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_194)
    _ => Error
  }
}

///|
fn yy_state_194(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_extendedAttributeArgList, yy_action_133)
}

///|
fn yy_state_195(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_132)
}

///|
fn yy_state_196(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_131)
}

///|
fn yy_state_197(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_130)
}

///|
fn yy_state_198(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_129)
}

///|
fn yy_state_199(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_128)
}

///|
fn yy_state_200(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_127)
}

///|
fn yy_state_201(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_126)
}

///|
fn yy_state_202(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_125)
}

///|
fn yy_state_203(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_124)
}

///|
fn yy_state_204(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_extendedAttribute, yy_action_123)
}

///|
fn yy_state_205(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_206)
    NT_extendedAttributes => Shift(yy_state_209)
    T_RBRACKET => Reduce(0, NT_extendedAttributes, yy_action_122)
    _ => Error
  }
}

///|
fn yy_state_206(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_3)
    NT_extendedAttributeNamedArgList => Shift(yy_state_195)
    NT_extendedAttributeIntegerList => Shift(yy_state_196)
    NT_extendedAttributeIdentList => Shift(yy_state_197)
    NT_extendedAttributeWildcard => Shift(yy_state_198)
    NT_extendedAttributeDecimal => Shift(yy_state_199)
    NT_extendedAttributeInteger => Shift(yy_state_200)
    NT_extendedAttributeString => Shift(yy_state_201)
    NT_extendedAttributeIdent => Shift(yy_state_202)
    NT_extendedAttributeArgList => Shift(yy_state_203)
    NT_extendedAttributeNoArgs => Shift(yy_state_204)
    NT_extendedAttribute => Shift(yy_state_207)
    _ => Error
  }
}

///|
fn yy_state_207(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_206)
    NT_extendedAttributes => Shift(yy_state_208)
    T_RBRACKET => Reduce(0, NT_extendedAttributes, yy_action_122)
    _ => Error
  }
}

///|
fn yy_state_208(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extendedAttributes, yy_action_121)
}

///|
fn yy_state_209(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_210)
    _ => Error
  }
}

///|
fn yy_state_210(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_extendedAttributeList, yy_action_120)
}

///|
fn yy_state_211(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definitions, yy_action_119)
}

///|
fn yy_state_212(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_TYPEDEF => Shift(yy_state_213)
    T_ENUM => Shift(yy_state_217)
    T_DICTIONARY => Shift(yy_state_229)
    T_NAMESPACE => Shift(yy_state_250)
    T_ID => Shift(yy_state_289)
    T_PARTIAL => Shift(yy_state_293)
    T_INTERFACE => Shift(yy_state_398)
    T_CALLBACK => Shift(yy_state_418)
    NT_includesStatement => Shift(yy_state_439)
    NT_typedef => Shift(yy_state_440)
    NT_enum_ => Shift(yy_state_441)
    NT_dictionary => Shift(yy_state_442)
    NT_partial => Shift(yy_state_443)
    NT_namespace => Shift(yy_state_444)
    NT_callbackOrInterfaceOrMixin => Shift(yy_state_445)
    NT_definition => Shift(yy_state_446)
    _ => Error
  }
}

///|
fn yy_state_213(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_214)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_214(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_215)
    _ => Error
  }
}

///|
fn yy_state_215(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_216)
    _ => Error
  }
}

///|
fn yy_state_216(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_typedef, yy_action_118)
}

///|
fn yy_state_217(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_218)
    _ => Error
  }
}

///|
fn yy_state_218(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_219)
    _ => Error
  }
}

///|
fn yy_state_219(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_220)
    NT_enumValueList => Shift(yy_state_226)
    _ => Error
  }
}

///|
fn yy_state_220(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_221)
    NT_enumValueListComma => Shift(yy_state_225)
    T_RBRACE => Reduce(0, NT_enumValueListComma, yy_action_117)
    _ => Error
  }
}

///|
fn yy_state_221(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_222)
    NT_enumValueListString => Shift(yy_state_224)
    T_RBRACE => Reduce(0, NT_enumValueListString, yy_action_116)
    _ => Error
  }
}

///|
fn yy_state_222(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_221)
    NT_enumValueListComma => Shift(yy_state_223)
    T_RBRACE => Reduce(0, NT_enumValueListComma, yy_action_117)
    _ => Error
  }
}

///|
fn yy_state_223(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_enumValueListString, yy_action_115)
}

///|
fn yy_state_224(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_enumValueListComma, yy_action_114)
}

///|
fn yy_state_225(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_enumValueList, yy_action_113)
}

///|
fn yy_state_226(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_227)
    _ => Error
  }
}

///|
fn yy_state_227(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_228)
    _ => Error
  }
}

///|
fn yy_state_228(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_enum_, yy_action_112)
}

///|
fn yy_state_229(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_230)
    _ => Error
  }
}

///|
fn yy_state_230(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_inheritanceance => Shift(yy_state_231)
    T_COLON => Shift(yy_state_248)
    T_LBRACE => Reduce(0, NT_inheritanceance, yy_action_111)
    _ => Error
  }
}

///|
fn yy_state_231(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_232)
    _ => Error
  }
}

///|
fn yy_state_232(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_233)
    NT_dictionaryMember => Shift(yy_state_243)
    NT_dictionaryMembers => Shift(yy_state_245)
    T_RBRACE => Reduce(0, NT_dictionaryMembers, yy_action_110)
    T_ID
    | T_REQUIRED
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_233(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_234)
    T_REQUIRED => Shift(yy_state_238)
    NT_dictionaryMemberRest => Shift(yy_state_242)
    _ => Error
  }
}

///|
fn yy_state_234(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_235)
    _ => Error
  }
}

///|
fn yy_state_235(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_166)
    NT_default => Shift(yy_state_236)
    T_SEMI => Reduce(0, NT_default, yy_action_155)
    _ => Error
  }
}

///|
fn yy_state_236(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_237)
    _ => Error
  }
}

///|
fn yy_state_237(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionaryMemberRest, yy_action_109)
}

///|
fn yy_state_238(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_239)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_239(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_240)
    _ => Error
  }
}

///|
fn yy_state_240(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_241)
    _ => Error
  }
}

///|
fn yy_state_241(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionaryMemberRest, yy_action_108)
}

///|
fn yy_state_242(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_dictionaryMember, yy_action_107)
}

///|
fn yy_state_243(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_233)
    NT_dictionaryMember => Shift(yy_state_243)
    NT_dictionaryMembers => Shift(yy_state_244)
    T_RBRACE => Reduce(0, NT_dictionaryMembers, yy_action_110)
    T_ID
    | T_REQUIRED
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_244(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_dictionaryMembers, yy_action_106)
}

///|
fn yy_state_245(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_246)
    _ => Error
  }
}

///|
fn yy_state_246(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_247)
    _ => Error
  }
}

///|
fn yy_state_247(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_dictionary, yy_action_105)
}

///|
fn yy_state_248(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_249)
    _ => Error
  }
}

///|
fn yy_state_249(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_inheritanceance, yy_action_104)
}

///|
fn yy_state_250(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_251)
    _ => Error
  }
}

///|
fn yy_state_251(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_252)
    _ => Error
  }
}

///|
fn yy_state_252(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_253)
    NT_namespaceMembers => Shift(yy_state_286)
    T_RBRACE => Reduce(0, NT_namespaceMembers, yy_action_103)
    T_ID
    | T_CONST
    | T_READONLY
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_253(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_const_ => Shift(yy_state_254)
    T_READONLY => Shift(yy_state_255)
    NT_regularOperation => Shift(yy_state_264)
    NT_namespaceMember => Shift(yy_state_265)
    NT_type_ => Shift(yy_state_267)
    T_CONST => Shift(yy_state_278)
    _ => Error
  }
}

///|
fn yy_state_254(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_namespaceMember, yy_action_102)
}

///|
fn yy_state_255(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_attributeRest => Shift(yy_state_256)
    T_ATTRIBUTE => Shift(yy_state_257)
    _ => Error
  }
}

///|
fn yy_state_256(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_namespaceMember, yy_action_101)
}

///|
fn yy_state_257(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_258)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_258(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_REQUIRED => Shift(yy_state_259)
    T_ID => Shift(yy_state_260)
    NT_attributeNameKeyword => Shift(yy_state_261)
    NT_attributeName => Shift(yy_state_262)
    _ => Error
  }
}

///|
fn yy_state_259(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_attributeNameKeyword, yy_action_100)
}

///|
fn yy_state_260(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_attributeName, yy_action_99)
}

///|
fn yy_state_261(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_attributeName, yy_action_98)
}

///|
fn yy_state_262(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_263)
    _ => Error
  }
}

///|
fn yy_state_263(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_attributeRest, yy_action_97)
}

///|
fn yy_state_264(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_namespaceMember, yy_action_96)
}

///|
fn yy_state_265(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_253)
    NT_namespaceMembers => Shift(yy_state_266)
    T_RBRACE => Reduce(0, NT_namespaceMembers, yy_action_103)
    T_ID
    | T_CONST
    | T_READONLY
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_266(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_namespaceMembers, yy_action_95)
}

///|
fn yy_state_267(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INCLUDES => Shift(yy_state_268)
    T_ID => Shift(yy_state_269)
    NT_operationNameKeyword => Shift(yy_state_270)
    NT_operationName => Shift(yy_state_271)
    NT_optionalOperationName => Shift(yy_state_272)
    NT_operationRest => Shift(yy_state_277)
    T_LPAREN => Reduce(0, NT_optionalOperationName, yy_action_94)
    _ => Error
  }
}

///|
fn yy_state_268(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operationNameKeyword, yy_action_93)
}

///|
fn yy_state_269(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operationName, yy_action_92)
}

///|
fn yy_state_270(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operationName, yy_action_91)
}

///|
fn yy_state_271(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_optionalOperationName, yy_action_90)
}

///|
fn yy_state_272(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_273)
    _ => Error
  }
}

///|
fn yy_state_273(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    NT_argumentList => Shift(yy_state_274)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_274(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_275)
    _ => Error
  }
}

///|
fn yy_state_275(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_276)
    _ => Error
  }
}

///|
fn yy_state_276(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_operationRest, yy_action_89)
}

///|
fn yy_state_277(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_regularOperation, yy_action_88)
}

///|
fn yy_state_278(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_ID => Shift(yy_state_279)
    NT_primitiveType => Shift(yy_state_280)
    NT_constType => Shift(yy_state_281)
    _ => Error
  }
}

///|
fn yy_state_279(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_constType, yy_action_87)
}

///|
fn yy_state_280(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_constType, yy_action_86)
}

///|
fn yy_state_281(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_282)
    _ => Error
  }
}

///|
fn yy_state_282(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_283)
    _ => Error
  }
}

///|
fn yy_state_283(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_NAN => Shift(yy_state_176)
    T_INFINITY => Shift(yy_state_177)
    T_NEGINFINITY => Shift(yy_state_178)
    T_DECIMAL => Shift(yy_state_179)
    T_FALSE => Shift(yy_state_180)
    T_TRUE => Shift(yy_state_181)
    T_INT => Shift(yy_state_182)
    NT_floatLiteral => Shift(yy_state_183)
    NT_booleanLiteral => Shift(yy_state_184)
    NT_constValue => Shift(yy_state_284)
    _ => Error
  }
}

///|
fn yy_state_284(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_285)
    _ => Error
  }
}

///|
fn yy_state_285(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_const_, yy_action_85)
}

///|
fn yy_state_286(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_287)
    _ => Error
  }
}

///|
fn yy_state_287(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_288)
    _ => Error
  }
}

///|
fn yy_state_288(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_namespace, yy_action_84)
}

///|
fn yy_state_289(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INCLUDES => Shift(yy_state_290)
    _ => Error
  }
}

///|
fn yy_state_290(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_291)
    _ => Error
  }
}

///|
fn yy_state_291(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_292)
    _ => Error
  }
}

///|
fn yy_state_292(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_includesStatement, yy_action_83)
}

///|
fn yy_state_293(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_NAMESPACE => Shift(yy_state_250)
    T_DICTIONARY => Shift(yy_state_294)
    NT_namespace => Shift(yy_state_300)
    NT_partialDictionary => Shift(yy_state_301)
    T_INTERFACE => Shift(yy_state_302)
    NT_partialDefinition => Shift(yy_state_397)
    _ => Error
  }
}

///|
fn yy_state_294(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_295)
    _ => Error
  }
}

///|
fn yy_state_295(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_296)
    _ => Error
  }
}

///|
fn yy_state_296(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_233)
    NT_dictionaryMember => Shift(yy_state_243)
    NT_dictionaryMembers => Shift(yy_state_297)
    T_RBRACE => Reduce(0, NT_dictionaryMembers, yy_action_110)
    T_ID
    | T_REQUIRED
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_297(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_298)
    _ => Error
  }
}

///|
fn yy_state_298(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_299)
    _ => Error
  }
}

///|
fn yy_state_299(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_partialDictionary, yy_action_82)
}

///|
fn yy_state_300(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialDefinition, yy_action_81)
}

///|
fn yy_state_301(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialDefinition, yy_action_80)
}

///|
fn yy_state_302(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_303)
    T_ID => Shift(yy_state_323)
    NT_mixinRest => Shift(yy_state_394)
    NT_partialInterfaceRest => Shift(yy_state_395)
    NT_partialInterfaceOrPartialMixin => Shift(yy_state_396)
    _ => Error
  }
}

///|
fn yy_state_303(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_304)
    _ => Error
  }
}

///|
fn yy_state_304(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_305)
    _ => Error
  }
}

///|
fn yy_state_305(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_306)
    NT_mixinMembers => Shift(yy_state_320)
    T_RBRACE => Reduce(0, NT_mixinMembers, yy_action_79)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_READONLY
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_306(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_267)
    T_CONST => Shift(yy_state_278)
    T_STRINGIFIER => Shift(yy_state_307)
    T_READONLY => Shift(yy_state_312)
    NT_optionalReadOnly => Shift(yy_state_313)
    NT_stringifier => Shift(yy_state_315)
    NT_regularOperation => Shift(yy_state_316)
    NT_const_ => Shift(yy_state_317)
    NT_mixinMember => Shift(yy_state_318)
    T_ATTRIBUTE => Reduce(0, NT_optionalReadOnly, yy_action_78)
    _ => Error
  }
}

///|
fn yy_state_307(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_308)
    NT_optionalReadOnly => Shift(yy_state_309)
    NT_stringifierRest => Shift(yy_state_311)
    T_READONLY => Shift(yy_state_312)
    T_ATTRIBUTE => Reduce(0, NT_optionalReadOnly, yy_action_78)
    _ => Error
  }
}

///|
fn yy_state_308(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_stringifierRest, yy_action_77)
}

///|
fn yy_state_309(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_attributeRest => Shift(yy_state_310)
    _ => Error
  }
}

///|
fn yy_state_310(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_stringifierRest, yy_action_76)
}

///|
fn yy_state_311(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_stringifier, yy_action_75)
}

///|
fn yy_state_312(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_optionalReadOnly, yy_action_74)
}

///|
fn yy_state_313(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_attributeRest => Shift(yy_state_314)
    _ => Error
  }
}

///|
fn yy_state_314(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_mixinMember, yy_action_73)
}

///|
fn yy_state_315(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_mixinMember, yy_action_72)
}

///|
fn yy_state_316(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_mixinMember, yy_action_71)
}

///|
fn yy_state_317(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_mixinMember, yy_action_70)
}

///|
fn yy_state_318(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_306)
    NT_mixinMembers => Shift(yy_state_319)
    T_RBRACE => Reduce(0, NT_mixinMembers, yy_action_79)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_READONLY
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_319(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_mixinMembers, yy_action_69)
}

///|
fn yy_state_320(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_321)
    _ => Error
  }
}

///|
fn yy_state_321(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_322)
    _ => Error
  }
}

///|
fn yy_state_322(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_mixinRest, yy_action_68)
}

///|
fn yy_state_323(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_324)
    _ => Error
  }
}

///|
fn yy_state_324(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_325)
    NT_partialInterfaceMembers => Shift(yy_state_391)
    T_RBRACE => Reduce(0, NT_partialInterfaceMembers, yy_action_67)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_DELETER
    | T_GETTER
    | T_INHERIT
    | T_ITERABLE
    | T_MAPLIKE
    | T_READONLY
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCITERABLE
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_325(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_type_ => Shift(yy_state_267)
    T_CONST => Shift(yy_state_278)
    T_STRINGIFIER => Shift(yy_state_307)
    T_SETLIKE => Shift(yy_state_326)
    NT_setlikeRest => Shift(yy_state_331)
    T_MAPLIKE => Shift(yy_state_332)
    NT_maplikeRest => Shift(yy_state_339)
    T_ASYNCITERABLE => Shift(yy_state_340)
    T_ITERABLE => Shift(yy_state_352)
    T_STATIC => Shift(yy_state_358)
    T_DELETER => Shift(yy_state_363)
    T_SETTER => Shift(yy_state_364)
    T_GETTER => Shift(yy_state_365)
    NT_special => Shift(yy_state_366)
    NT_specialOperation => Shift(yy_state_368)
    NT_regularOperation => Shift(yy_state_369)
    T_INHERIT => Shift(yy_state_370)
    NT_attributeRest => Shift(yy_state_372)
    T_READONLY => Shift(yy_state_373)
    NT_inheritanceAttribute => Shift(yy_state_378)
    NT_readWriteSetlike => Shift(yy_state_379)
    NT_readWriteMaplike => Shift(yy_state_380)
    NT_readWriteAttribute => Shift(yy_state_381)
    NT_readOnlyMember => Shift(yy_state_382)
    NT_asyncIterable => Shift(yy_state_383)
    NT_iterable => Shift(yy_state_384)
    NT_staticMember => Shift(yy_state_385)
    NT_stringifier => Shift(yy_state_386)
    NT_operation => Shift(yy_state_387)
    NT_const_ => Shift(yy_state_388)
    NT_partialInterfaceMember => Shift(yy_state_389)
    _ => Error
  }
}

///|
fn yy_state_326(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_327)
    _ => Error
  }
}

///|
fn yy_state_327(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_328)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_328(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_329)
    _ => Error
  }
}

///|
fn yy_state_329(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_330)
    _ => Error
  }
}

///|
fn yy_state_330(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_setlikeRest, yy_action_66)
}

///|
fn yy_state_331(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readWriteSetlike, yy_action_65)
}

///|
fn yy_state_332(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_333)
    _ => Error
  }
}

///|
fn yy_state_333(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_334)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_334(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_335)
    _ => Error
  }
}

///|
fn yy_state_335(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_336)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_336(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_337)
    _ => Error
  }
}

///|
fn yy_state_337(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_338)
    _ => Error
  }
}

///|
fn yy_state_338(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_maplikeRest, yy_action_64)
}

///|
fn yy_state_339(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readWriteMaplike, yy_action_63)
}

///|
fn yy_state_340(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_341)
    _ => Error
  }
}

///|
fn yy_state_341(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_342)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_342(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_optionalType => Shift(yy_state_343)
    T_COMMA => Shift(yy_state_350)
    T_GT => Reduce(0, NT_optionalType, yy_action_62)
    _ => Error
  }
}

///|
fn yy_state_343(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_344)
    _ => Error
  }
}

///|
fn yy_state_344(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_345)
    NT_optionalArgumentList => Shift(yy_state_348)
    T_SEMI => Reduce(0, NT_optionalArgumentList, yy_action_61)
    _ => Error
  }
}

///|
fn yy_state_345(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    NT_argumentList => Shift(yy_state_346)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_346(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_347)
    _ => Error
  }
}

///|
fn yy_state_347(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_optionalArgumentList, yy_action_60)
}

///|
fn yy_state_348(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_349)
    _ => Error
  }
}

///|
fn yy_state_349(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_asyncIterable, yy_action_59)
}

///|
fn yy_state_350(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_351)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_351(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_optionalType, yy_action_58)
}

///|
fn yy_state_352(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LT => Shift(yy_state_353)
    _ => Error
  }
}

///|
fn yy_state_353(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_50)
    NT_typeWithExtendedAttributes => Shift(yy_state_354)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_354(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_350)
    NT_optionalType => Shift(yy_state_355)
    T_GT => Reduce(0, NT_optionalType, yy_action_62)
    _ => Error
  }
}

///|
fn yy_state_355(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_GT => Shift(yy_state_356)
    _ => Error
  }
}

///|
fn yy_state_356(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_357)
    _ => Error
  }
}

///|
fn yy_state_357(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_iterable, yy_action_57)
}

///|
fn yy_state_358(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_267)
    T_READONLY => Shift(yy_state_312)
    NT_regularOperation => Shift(yy_state_359)
    NT_optionalReadOnly => Shift(yy_state_360)
    NT_staticMemberRest => Shift(yy_state_362)
    T_ATTRIBUTE => Reduce(0, NT_optionalReadOnly, yy_action_78)
    _ => Error
  }
}

///|
fn yy_state_359(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_staticMemberRest, yy_action_56)
}

///|
fn yy_state_360(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_attributeRest => Shift(yy_state_361)
    _ => Error
  }
}

///|
fn yy_state_361(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_staticMemberRest, yy_action_55)
}

///|
fn yy_state_362(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_staticMember, yy_action_54)
}

///|
fn yy_state_363(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_53)
}

///|
fn yy_state_364(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_52)
}

///|
fn yy_state_365(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_51)
}

///|
fn yy_state_366(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_267)
    NT_regularOperation => Shift(yy_state_367)
    _ => Error
  }
}

///|
fn yy_state_367(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_specialOperation, yy_action_50)
}

///|
fn yy_state_368(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operation, yy_action_49)
}

///|
fn yy_state_369(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operation, yy_action_48)
}

///|
fn yy_state_370(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_attributeRest => Shift(yy_state_371)
    _ => Error
  }
}

///|
fn yy_state_371(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_inheritanceAttribute, yy_action_47)
}

///|
fn yy_state_372(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readWriteAttribute, yy_action_46)
}

///|
fn yy_state_373(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_257)
    T_SETLIKE => Shift(yy_state_326)
    T_MAPLIKE => Shift(yy_state_332)
    NT_setlikeRest => Shift(yy_state_374)
    NT_maplikeRest => Shift(yy_state_375)
    NT_attributeRest => Shift(yy_state_376)
    NT_readOnlyMemberRest => Shift(yy_state_377)
    _ => Error
  }
}

///|
fn yy_state_374(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readOnlyMemberRest, yy_action_45)
}

///|
fn yy_state_375(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readOnlyMemberRest, yy_action_44)
}

///|
fn yy_state_376(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_readOnlyMemberRest, yy_action_43)
}

///|
fn yy_state_377(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_readOnlyMember, yy_action_42)
}

///|
fn yy_state_378(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_41)
}

///|
fn yy_state_379(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_40)
}

///|
fn yy_state_380(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_39)
}

///|
fn yy_state_381(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_38)
}

///|
fn yy_state_382(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_37)
}

///|
fn yy_state_383(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_36)
}

///|
fn yy_state_384(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_35)
}

///|
fn yy_state_385(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_34)
}

///|
fn yy_state_386(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_33)
}

///|
fn yy_state_387(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_32)
}

///|
fn yy_state_388(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceMember, yy_action_31)
}

///|
fn yy_state_389(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_325)
    NT_partialInterfaceMembers => Shift(yy_state_390)
    T_RBRACE => Reduce(0, NT_partialInterfaceMembers, yy_action_67)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_DELETER
    | T_GETTER
    | T_INHERIT
    | T_ITERABLE
    | T_MAPLIKE
    | T_READONLY
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCITERABLE
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_390(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_partialInterfaceMembers, yy_action_30)
}

///|
fn yy_state_391(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_392)
    _ => Error
  }
}

///|
fn yy_state_392(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_393)
    _ => Error
  }
}

///|
fn yy_state_393(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_partialInterfaceRest, yy_action_29)
}

///|
fn yy_state_394(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceOrPartialMixin, yy_action_28)
}

///|
fn yy_state_395(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_partialInterfaceOrPartialMixin, yy_action_27)
}

///|
fn yy_state_396(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_partialDefinition, yy_action_26)
}

///|
fn yy_state_397(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_partial, yy_action_25)
}

///|
fn yy_state_398(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_303)
    T_ID => Shift(yy_state_399)
    NT_mixinRest => Shift(yy_state_415)
    NT_interfaceRest => Shift(yy_state_416)
    NT_interfaceOrMixin => Shift(yy_state_417)
    _ => Error
  }
}

///|
fn yy_state_399(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_248)
    NT_inheritanceance => Shift(yy_state_400)
    T_LBRACE => Reduce(0, NT_inheritanceance, yy_action_111)
    _ => Error
  }
}

///|
fn yy_state_400(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_401)
    _ => Error
  }
}

///|
fn yy_state_401(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_402)
    NT_interfaceMembers => Shift(yy_state_412)
    T_RBRACE => Reduce(0, NT_interfaceMembers, yy_action_24)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_GETTER
    | T_INHERIT
    | T_ITERABLE
    | T_MAPLIKE
    | T_READONLY
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCITERABLE
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_402(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    T_ATTRIBUTE => Shift(yy_state_257)
    NT_type_ => Shift(yy_state_267)
    T_CONST => Shift(yy_state_278)
    T_STRINGIFIER => Shift(yy_state_307)
    T_SETLIKE => Shift(yy_state_326)
    NT_setlikeRest => Shift(yy_state_331)
    T_MAPLIKE => Shift(yy_state_332)
    NT_maplikeRest => Shift(yy_state_339)
    T_ASYNCITERABLE => Shift(yy_state_340)
    T_ITERABLE => Shift(yy_state_352)
    T_STATIC => Shift(yy_state_358)
    T_DELETER => Shift(yy_state_363)
    T_SETTER => Shift(yy_state_364)
    T_GETTER => Shift(yy_state_365)
    NT_special => Shift(yy_state_366)
    NT_specialOperation => Shift(yy_state_368)
    NT_regularOperation => Shift(yy_state_369)
    T_INHERIT => Shift(yy_state_370)
    NT_attributeRest => Shift(yy_state_372)
    T_READONLY => Shift(yy_state_373)
    NT_inheritanceAttribute => Shift(yy_state_378)
    NT_readWriteSetlike => Shift(yy_state_379)
    NT_readWriteMaplike => Shift(yy_state_380)
    NT_readWriteAttribute => Shift(yy_state_381)
    NT_readOnlyMember => Shift(yy_state_382)
    NT_asyncIterable => Shift(yy_state_383)
    NT_iterable => Shift(yy_state_384)
    NT_staticMember => Shift(yy_state_385)
    NT_stringifier => Shift(yy_state_386)
    NT_operation => Shift(yy_state_387)
    NT_const_ => Shift(yy_state_388)
    T_CONSTRUCTOR => Shift(yy_state_403)
    NT_constructor => Shift(yy_state_408)
    NT_partialInterfaceMember => Shift(yy_state_409)
    NT_interfaceMember => Shift(yy_state_410)
    _ => Error
  }
}

///|
fn yy_state_403(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_404)
    _ => Error
  }
}

///|
fn yy_state_404(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    NT_argumentList => Shift(yy_state_405)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_405(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_406)
    _ => Error
  }
}

///|
fn yy_state_406(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_407)
    _ => Error
  }
}

///|
fn yy_state_407(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_constructor, yy_action_23)
}

///|
fn yy_state_408(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interfaceMember, yy_action_22)
}

///|
fn yy_state_409(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interfaceMember, yy_action_21)
}

///|
fn yy_state_410(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_402)
    NT_interfaceMembers => Shift(yy_state_411)
    T_RBRACE => Reduce(0, NT_interfaceMembers, yy_action_24)
    T_ID
    | T_ATTRIBUTE
    | T_CONST
    | T_CONSTRUCTOR
    | T_DELETER
    | T_GETTER
    | T_INHERIT
    | T_ITERABLE
    | T_MAPLIKE
    | T_READONLY
    | T_SETLIKE
    | T_SETTER
    | T_STATIC
    | T_STRINGIFIER
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCITERABLE
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_411(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_interfaceMembers, yy_action_20)
}

///|
fn yy_state_412(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_413)
    _ => Error
  }
}

///|
fn yy_state_413(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_414)
    _ => Error
  }
}

///|
fn yy_state_414(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interfaceRest, yy_action_19)
}

///|
fn yy_state_415(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interfaceOrMixin, yy_action_18)
}

///|
fn yy_state_416(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interfaceOrMixin, yy_action_17)
}

///|
fn yy_state_417(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_callbackOrInterfaceOrMixin, yy_action_16)
}

///|
fn yy_state_418(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_419)
    T_INTERFACE => Shift(yy_state_426)
    NT_callbackRest => Shift(yy_state_437)
    NT_callbackRestOrInterface => Shift(yy_state_438)
    _ => Error
  }
}

///|
fn yy_state_419(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUAL => Shift(yy_state_420)
    _ => Error
  }
}

///|
fn yy_state_420(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_421)
    _ => Error
  }
}

///|
fn yy_state_421(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_422)
    _ => Error
  }
}

///|
fn yy_state_422(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_28)
    NT_argument => Shift(yy_state_187)
    NT_argumentList => Shift(yy_state_423)
    T_RPAREN => Reduce(0, NT_argumentList, yy_action_247)
    T_ID
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_OPTIONAL
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_423(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_424)
    _ => Error
  }
}

///|
fn yy_state_424(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_425)
    _ => Error
  }
}

///|
fn yy_state_425(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_callbackRest, yy_action_15)
}

///|
fn yy_state_426(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ID => Shift(yy_state_427)
    _ => Error
  }
}

///|
fn yy_state_427(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_428)
    _ => Error
  }
}

///|
fn yy_state_428(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_429)
    NT_callbackInterfaceMembers => Shift(yy_state_434)
    T_RBRACE => Reduce(0, NT_callbackInterfaceMembers, yy_action_14)
    T_ID
    | T_CONST
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_429(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_29)
    T_FLOAT32ARRAY => Shift(yy_state_30)
    T_FLOAT16ARRAY => Shift(yy_state_31)
    T_BIGUINT64ARRAY => Shift(yy_state_32)
    T_BIGINT64ARRAY => Shift(yy_state_33)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_34)
    T_UINT32ARRAY => Shift(yy_state_35)
    T_UINT16ARRAY => Shift(yy_state_36)
    T_UINT8ARRAY => Shift(yy_state_37)
    T_INT32ARRAY => Shift(yy_state_38)
    T_INT16ARRAY => Shift(yy_state_39)
    T_INT8ARRAY => Shift(yy_state_40)
    T_DATAVIEW => Shift(yy_state_41)
    T_SHAREDARRAYBUFFER => Shift(yy_state_42)
    T_ARRAYBUFFER => Shift(yy_state_43)
    T_RECORD => Shift(yy_state_44)
    T_PROMISE => Shift(yy_state_51)
    T_USVSTRING => Shift(yy_state_55)
    T_DOMSTRING => Shift(yy_state_56)
    T_BYTESTRING => Shift(yy_state_57)
    T_LONG => Shift(yy_state_58)
    T_SHORT => Shift(yy_state_61)
    NT_integerType => Shift(yy_state_62)
    T_UNSIGNED => Shift(yy_state_63)
    T_DOUBLE => Shift(yy_state_65)
    T_FLOAT => Shift(yy_state_66)
    NT_floatType => Shift(yy_state_67)
    T_UNRESTRICTED => Shift(yy_state_68)
    T_BIGINT => Shift(yy_state_70)
    T_OCTET => Shift(yy_state_71)
    T_BYTE => Shift(yy_state_72)
    T_BOOLEAN => Shift(yy_state_73)
    NT_unrestrictedFloatType => Shift(yy_state_74)
    NT_unsignedIntegerType => Shift(yy_state_75)
    T_UNDEFINED => Shift(yy_state_76)
    NT_recordType => Shift(yy_state_79)
    T_OBSERVABLEARRAY => Shift(yy_state_81)
    T_FROZENARRAY => Shift(yy_state_86)
    NT_bufferRelatedType => Shift(yy_state_91)
    T_SYMBOL => Shift(yy_state_93)
    T_OBJECT => Shift(yy_state_95)
    T_ASYNCSEQUENCE => Shift(yy_state_97)
    T_SEQUENCE => Shift(yy_state_102)
    T_ID => Shift(yy_state_107)
    NT_stringType => Shift(yy_state_109)
    NT_primitiveType => Shift(yy_state_111)
    T_LPAREN => Shift(yy_state_113)
    NT_promiseType => Shift(yy_state_126)
    T_ANY => Shift(yy_state_127)
    NT_distinguishableType => Shift(yy_state_128)
    NT_unionType => Shift(yy_state_129)
    NT_singleType => Shift(yy_state_131)
    NT_type_ => Shift(yy_state_267)
    T_CONST => Shift(yy_state_278)
    NT_regularOperation => Shift(yy_state_430)
    NT_const_ => Shift(yy_state_431)
    NT_callbackInterfaceMember => Shift(yy_state_432)
    _ => Error
  }
}

///|
fn yy_state_430(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callbackInterfaceMember, yy_action_13)
}

///|
fn yy_state_431(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callbackInterfaceMember, yy_action_12)
}

///|
fn yy_state_432(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extendedAttributeList => Shift(yy_state_429)
    NT_callbackInterfaceMembers => Shift(yy_state_433)
    T_RBRACE => Reduce(0, NT_callbackInterfaceMembers, yy_action_14)
    T_ID
    | T_CONST
    | T_UNRESTRICTED
    | T_ARRAYBUFFER
    | T_SHAREDARRAYBUFFER
    | T_DATAVIEW
    | T_INT8ARRAY
    | T_INT16ARRAY
    | T_INT32ARRAY
    | T_UINT8ARRAY
    | T_UINT16ARRAY
    | T_UINT32ARRAY
    | T_UINT8CLAMPEDARRAY
    | T_BIGINT64ARRAY
    | T_BIGUINT64ARRAY
    | T_FLOAT16ARRAY
    | T_FLOAT32ARRAY
    | T_FLOAT64ARRAY
    | T_BYTESTRING
    | T_DOMSTRING
    | T_USVSTRING
    | T_FROZENARRAY
    | T_OBSERVABLEARRAY
    | T_PROMISE
    | T_ANY
    | T_BIGINT
    | T_BOOLEAN
    | T_BYTE
    | T_DOUBLE
    | T_FLOAT
    | T_LONG
    | T_OBJECT
    | T_OCTET
    | T_RECORD
    | T_SEQUENCE
    | T_SHORT
    | T_SYMBOL
    | T_UNSIGNED
    | T_ASYNCSEQUENCE
    | T_UNDEFINED
    | T_LPAREN => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_433(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_callbackInterfaceMembers, yy_action_11)
}

///|
fn yy_state_434(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_435)
    _ => Error
  }
}

///|
fn yy_state_435(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMI => Shift(yy_state_436)
    _ => Error
  }
}

///|
fn yy_state_436(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_callbackRestOrInterface, yy_action_10)
}

///|
fn yy_state_437(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callbackRestOrInterface, yy_action_9)
}

///|
fn yy_state_438(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_callbackOrInterfaceOrMixin, yy_action_8)
}

///|
fn yy_state_439(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_7)
}

///|
fn yy_state_440(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_6)
}

///|
fn yy_state_441(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_5)
}

///|
fn yy_state_442(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_4)
}

///|
fn yy_state_443(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_3)
}

///|
fn yy_state_444(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_2)
}

///|
fn yy_state_445(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_1)
}

///|
fn yy_state_446(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_211)
    NT_extendedAttributeList => Shift(yy_state_212)
    NT_definitions => Shift(yy_state_447)
    T_ID
    | T_CALLBACK
    | T_DICTIONARY
    | T_ENUM
    | T_INTERFACE
    | T_NAMESPACE
    | T_PARTIAL
    | T_TYPEDEF => Reduce(0, NT_extendedAttributeList, yy_action_262)
    _ => Error
  }
}

///|
fn yy_state_447(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_definitions, yy_action_0)
}

///|
fn[T] yy_parse(
  tokens : Array[(Token, Unit, Unit)],
  start : YYState,
  return_ : (YYObj) -> T,
  initial_pos? : Unit,
) -> T raise ParseError {
  let mut cursor = 0
  let mut state_stack : @list.List[YYState] = @list.cons(start, @list.empty())
  let data_stack : Array[(YYObj, Unit, Unit)] = []
  let mut last_pos = initial_pos.unwrap_or(tokens[0].1)
  let mut state = start
  let mut lookahead : (YYSymbol, (YYObj, Unit, Unit), Token?)? = None
  let mut last_shifted_state_stack = state_stack
  while true {
    let decision = match state(EOI) {
      ReduceNoLookahead(_) | Accept as t => t
      _ =>
        match lookahead {
          Some(la) => state(la.0)
          None =>
            if cursor < tokens.length() {
              let (token, start_pos, end_pos) = tokens[cursor]
              cursor += 1
              let (symbol, data) = yy_input(token, start_pos, end_pos)
              lookahead = Some(
                (symbol, (data, start_pos, end_pos), Some(token)),
              )
              state(symbol)
            } else {
              lookahead = Some((EOI, (YYObj_Void, last_pos, last_pos), None))
              state(EOI)
            }
        }
    }
    match decision {
      Accept => return return_(data_stack.unsafe_pop().0)
      Shift(next_state) => {
        guard lookahead is Some(la)
        data_stack.push(la.1)
        state_stack = @list.cons(next_state, state_stack)
        last_shifted_state_stack = state_stack
        state = next_state
        last_pos = la.1.2
        lookahead = None
      }
      Reduce(count, symbol, action)
      | ReduceNoLookahead(count, symbol, action) =>
        loop (count, symbol, action) {
          _ => {
            let args = data_stack[data_stack.length() - count:]
            let data = action(last_pos, args)
            let (start_pos, end_pos) = if args.length() == 0 {
              (last_pos, last_pos)
            } else {
              (args[0].1, args[args.length() - 1].2)
            }
            for i in 0..<count {
              ignore(data_stack.unsafe_pop())
              state_stack = state_stack.unsafe_tail()
            }
            state = state_stack.unsafe_head()
            data_stack.push((data, start_pos, end_pos))
            match state(symbol) {
              Accept => return return_(data_stack.unsafe_pop().0)
              Shift(next_state) => {
                state_stack = @list.cons(next_state, state_stack)
                state = next_state
              }
              Reduce(count, symbol, action)
              | ReduceNoLookahead(count, symbol, action) =>
                continue (count, symbol, action)
              _ => panic()
            }
          }
        }
      Error => {
        let (_, (_, start_pos, end_pos), token) = lookahead.unwrap()
        error(last_shifted_state_stack, token, (start_pos, end_pos))
      }
    }
  }
  panic()
}

///|
fn error(
  stack : @list.List[YYState],
  token : Token?,
  loc : (Unit, Unit),
) -> Unit raise ParseError {
  let expected = []
  fn try_add(symbol : YYSymbol, kind : TokenKind) {
    fn go(stack : @list.List[YYState]) {
      match stack {
        Empty => ()
        More(state, ..) =>
          match state(symbol) {
            Accept | Shift(_) => expected.push(kind)
            Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => {
              fn inner_go(stack : @list.List[YYState], count, symbol) {
                let stack = stack.drop(count)
                guard stack is More(state, ..)
                match state(symbol) {
                  Shift(state) => go(@list.cons(state, stack))
                  Reduce(count, symbol, _)
                  | ReduceNoLookahead(count, symbol, _) =>
                    inner_go(stack, count, symbol)
                  _ => panic()
                }
              }

              inner_go(stack, count, symbol)
            }
            Error => ()
          }
      }
    }

    go(stack)
  }

  for
    term in (
      [
        (T_INT, TK_INT),
        (T_ID, TK_ID),
        (T_STRING, TK_STRING),
        (T_DECIMAL, TK_DECIMAL),
        (T_ATTRIBUTE, TK_ATTRIBUTE),
        (T_CALLBACK, TK_CALLBACK),
        (T_CONST, TK_CONST),
        (T_CONSTRUCTOR, TK_CONSTRUCTOR),
        (T_DELETER, TK_DELETER),
        (T_DICTIONARY, TK_DICTIONARY),
        (T_ENUM, TK_ENUM),
        (T_GETTER, TK_GETTER),
        (T_INCLUDES, TK_INCLUDES),
        (T_INHERIT, TK_INHERIT),
        (T_INTERFACE, TK_INTERFACE),
        (T_ITERABLE, TK_ITERABLE),
        (T_MAPLIKE, TK_MAPLIKE),
        (T_MIXIN, TK_MIXIN),
        (T_NAMESPACE, TK_NAMESPACE),
        (T_PARTIAL, TK_PARTIAL),
        (T_READONLY, TK_READONLY),
        (T_REQUIRED, TK_REQUIRED),
        (T_SETLIKE, TK_SETLIKE),
        (T_SETTER, TK_SETTER),
        (T_STATIC, TK_STATIC),
        (T_STRINGIFIER, TK_STRINGIFIER),
        (T_TYPEDEF, TK_TYPEDEF),
        (T_UNRESTRICTED, TK_UNRESTRICTED),
        (T_ARRAYBUFFER, TK_ARRAYBUFFER),
        (T_SHAREDARRAYBUFFER, TK_SHAREDARRAYBUFFER),
        (T_DATAVIEW, TK_DATAVIEW),
        (T_INT8ARRAY, TK_INT8ARRAY),
        (T_INT16ARRAY, TK_INT16ARRAY),
        (T_INT32ARRAY, TK_INT32ARRAY),
        (T_UINT8ARRAY, TK_UINT8ARRAY),
        (T_UINT16ARRAY, TK_UINT16ARRAY),
        (T_UINT32ARRAY, TK_UINT32ARRAY),
        (T_UINT8CLAMPEDARRAY, TK_UINT8CLAMPEDARRAY),
        (T_BIGINT64ARRAY, TK_BIGINT64ARRAY),
        (T_BIGUINT64ARRAY, TK_BIGUINT64ARRAY),
        (T_FLOAT16ARRAY, TK_FLOAT16ARRAY),
        (T_FLOAT32ARRAY, TK_FLOAT32ARRAY),
        (T_FLOAT64ARRAY, TK_FLOAT64ARRAY),
        (T_BYTESTRING, TK_BYTESTRING),
        (T_DOMSTRING, TK_DOMSTRING),
        (T_USVSTRING, TK_USVSTRING),
        (T_FROZENARRAY, TK_FROZENARRAY),
        (T_INFINITY, TK_INFINITY),
        (T_NEGINFINITY, TK_NEGINFINITY),
        (T_NAN, TK_NAN),
        (T_OBSERVABLEARRAY, TK_OBSERVABLEARRAY),
        (T_PROMISE, TK_PROMISE),
        (T_ANY, TK_ANY),
        (T_BIGINT, TK_BIGINT),
        (T_BOOLEAN, TK_BOOLEAN),
        (T_BYTE, TK_BYTE),
        (T_DOUBLE, TK_DOUBLE),
        (T_FLOAT, TK_FLOAT),
        (T_LONG, TK_LONG),
        (T_OBJECT, TK_OBJECT),
        (T_OCTET, TK_OCTET),
        (T_RECORD, TK_RECORD),
        (T_SEQUENCE, TK_SEQUENCE),
        (T_SHORT, TK_SHORT),
        (T_SYMBOL, TK_SYMBOL),
        (T_UNSIGNED, TK_UNSIGNED),
        (T_ASYNCITERABLE, TK_ASYNCITERABLE),
        (T_ASYNCSEQUENCE, TK_ASYNCSEQUENCE),
        (T_FALSE, TK_FALSE),
        (T_TRUE, TK_TRUE),
        (T_NULL, TK_NULL),
        (T_UNDEFINED, TK_UNDEFINED),
        (T_MINUS, TK_MINUS),
        (T_DOT, TK_DOT),
        (T_ELLIPS, TK_ELLIPS),
        (T_COLON, TK_COLON),
        (T_SEMI, TK_SEMI),
        (T_LT, TK_LT),
        (T_EQUAL, TK_EQUAL),
        (T_GT, TK_GT),
        (T_QUESTION, TK_QUESTION),
        (T_STAR, TK_STAR),
        (T_OR, TK_OR),
        (T_OPTIONAL, TK_OPTIONAL),
        (T_LBRACE, TK_LBRACE),
        (T_RBRACE, TK_RBRACE),
        (T_LPAREN, TK_LPAREN),
        (T_RPAREN, TK_RPAREN),
        (T_LBRACKET, TK_LBRACKET),
        (T_RBRACKET, TK_RBRACKET),
        (T_COMMA, TK_COMMA),
        (T_EOF, TK_EOF),
      ] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  match token {
    None => raise UnexpectedEndOfInput(loc.1, expected)
    Some(token) => raise UnexpectedToken(token, loc, expected)
  }
}

///|
pub fn definitions(
  tokens : Array[(Token, Unit, Unit)],
  initial_pos? : Unit,
) -> List[Definition] raise ParseError {
  yy_parse(
    tokens,
    yy_state_0,
    it => {
      guard it is YYObj_List_Definition_(result)
      result
    },
    initial_pos?,
  )
}
