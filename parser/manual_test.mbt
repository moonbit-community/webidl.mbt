///|
fn lex_test(input : String) -> String {
  let tokens = lex_(input)
  tokens.fold(init="", fn(acc, x) { acc + "\n" + x.to_string() })
}

///|
fn parse_test(input : String) -> @list.List[@syntax.Definition] {
  parse(lex_(input))
}

///|
test "lex" {
  let source =
    #|[Exposed=*, Serializable]
    #|interface QuotaExceededError : DOMException {
    #|  constructor(optional DOMString message = "", optional QuotaExceededErrorOptions options = {});
    #|
    #|  readonly attribute double? quota;
    #|  readonly attribute double? requested;
    #|};
    #|
    #|dictionary QuotaExceededErrorOptions {
    #|  double quota;
    #|  double requested;
    #|};
    #|
    #|typedef (Int8Array or Int16Array or Int32Array or
    #|         Uint8Array or Uint16Array or Uint32Array or Uint8ClampedArray or
    #|         BigInt64Array or BigUint64Array or
    #|         Float16Array or Float32Array or Float64Array or DataView) ArrayBufferView;
    #|
    #|typedef (ArrayBufferView or ArrayBuffer) BufferSource;
    #|typedef (ArrayBuffer or SharedArrayBuffer or [AllowShared] ArrayBufferView) AllowSharedBufferSource;
    #|[Exposed=*,
    #| Serializable]
    #|interface DOMException {
    #|  constructor(optional DOMString message = "", optional DOMString name = "Error");
    #|  readonly attribute DOMString name;
    #|  readonly attribute DOMString message;
    #|  readonly attribute unsigned short code;
    #|
    #|  const unsigned short INDEX_SIZE_ERR = 1;
    #|  const unsigned short DOMSTRING_SIZE_ERR = 2;
    #|  const unsigned short HIERARCHY_REQUEST_ERR = 3;
    #|  const unsigned short WRONG_DOCUMENT_ERR = 4;
    #|  const unsigned short INVALID_CHARACTER_ERR = 5;
    #|  const unsigned short NO_DATA_ALLOWED_ERR = 6;
    #|  const unsigned short NO_MODIFICATION_ALLOWED_ERR = 7;
    #|  const unsigned short NOT_FOUND_ERR = 8;
    #|  const unsigned short NOT_SUPPORTED_ERR = 9;
    #|  const unsigned short INUSE_ATTRIBUTE_ERR = 10;
    #|  const unsigned short INVALID_STATE_ERR = 11;
    #|  const unsigned short SYNTAX_ERR = 12;
    #|  const unsigned short INVALID_MODIFICATION_ERR = 13;
    #|  const unsigned short NAMESPACE_ERR = 14;
    #|  const unsigned short INVALID_ACCESS_ERR = 15;
    #|  const unsigned short VALIDATION_ERR = 16;
    #|  const unsigned short TYPE_MISMATCH_ERR = 17;
    #|  const unsigned short SECURITY_ERR = 18;
    #|  const unsigned short NETWORK_ERR = 19;
    #|  const unsigned short ABORT_ERR = 20;
    #|  const unsigned short URL_MISMATCH_ERR = 21;
    #|  const unsigned short QUOTA_EXCEEDED_ERR = 22;
    #|  const unsigned short TIMEOUT_ERR = 23;
    #|  const unsigned short INVALID_NODE_TYPE_ERR = 24;
    #|  const unsigned short DATA_CLONE_ERR = 25;
    #|};
    #|
    #|callback Function = any (any... arguments);
    #|callback VoidFunction = undefined (); 
  inspect(
    lex_test(source),
    content=(
      #|
      #|LBRACKET
      #|ID("Exposed")
      #|EQUAL
      #|STAR
      #|COMMA
      #|ID("Serializable")
      #|RBRACKET
      #|INTERFACE
      #|ID("QuotaExceededError")
      #|COLON
      #|ID("DOMException")
      #|LBRACE
      #|CONSTRUCTOR
      #|LPAREN
      #|OPTIONAL
      #|DOMSTRING
      #|ID("message")
      #|EQUAL
      #|STRING("\"\"")
      #|COMMA
      #|OPTIONAL
      #|ID("QuotaExceededErrorOptions")
      #|ID("options")
      #|EQUAL
      #|LBRACE
      #|RBRACE
      #|RPAREN
      #|SEMI
      #|READONLY
      #|ATTRIBUTE
      #|DOUBLE
      #|QUESTION
      #|ID("quota")
      #|SEMI
      #|READONLY
      #|ATTRIBUTE
      #|DOUBLE
      #|QUESTION
      #|ID("requested")
      #|SEMI
      #|RBRACE
      #|SEMI
      #|DICTIONARY
      #|ID("QuotaExceededErrorOptions")
      #|LBRACE
      #|DOUBLE
      #|ID("quota")
      #|SEMI
      #|DOUBLE
      #|ID("requested")
      #|SEMI
      #|RBRACE
      #|SEMI
      #|TYPEDEF
      #|LPAREN
      #|INT8ARRAY
      #|OR
      #|INT16ARRAY
      #|OR
      #|INT32ARRAY
      #|OR
      #|UINT8ARRAY
      #|OR
      #|UINT16ARRAY
      #|OR
      #|UINT32ARRAY
      #|OR
      #|UINT8CLAMPEDARRAY
      #|OR
      #|BIGINT64ARRAY
      #|OR
      #|BIGUINT64ARRAY
      #|OR
      #|FLOAT16ARRAY
      #|OR
      #|FLOAT32ARRAY
      #|OR
      #|FLOAT64ARRAY
      #|OR
      #|DATAVIEW
      #|RPAREN
      #|ID("ArrayBufferView")
      #|SEMI
      #|TYPEDEF
      #|LPAREN
      #|ID("ArrayBufferView")
      #|OR
      #|ARRAYBUFFER
      #|RPAREN
      #|ID("BufferSource")
      #|SEMI
      #|TYPEDEF
      #|LPAREN
      #|ARRAYBUFFER
      #|OR
      #|SHAREDARRAYBUFFER
      #|OR
      #|LBRACKET
      #|ID("AllowShared")
      #|RBRACKET
      #|ID("ArrayBufferView")
      #|RPAREN
      #|ID("AllowSharedBufferSource")
      #|SEMI
      #|LBRACKET
      #|ID("Exposed")
      #|EQUAL
      #|STAR
      #|COMMA
      #|ID("Serializable")
      #|RBRACKET
      #|INTERFACE
      #|ID("DOMException")
      #|LBRACE
      #|CONSTRUCTOR
      #|LPAREN
      #|OPTIONAL
      #|DOMSTRING
      #|ID("message")
      #|EQUAL
      #|STRING("\"\"")
      #|COMMA
      #|OPTIONAL
      #|DOMSTRING
      #|ID("name")
      #|EQUAL
      #|STRING("\"Error\"")
      #|RPAREN
      #|SEMI
      #|READONLY
      #|ATTRIBUTE
      #|DOMSTRING
      #|ID("name")
      #|SEMI
      #|READONLY
      #|ATTRIBUTE
      #|DOMSTRING
      #|ID("message")
      #|SEMI
      #|READONLY
      #|ATTRIBUTE
      #|UNSIGNED
      #|SHORT
      #|ID("code")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INDEX_SIZE_ERR")
      #|EQUAL
      #|INT("1")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("DOMSTRING_SIZE_ERR")
      #|EQUAL
      #|INT("2")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("HIERARCHY_REQUEST_ERR")
      #|EQUAL
      #|INT("3")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("WRONG_DOCUMENT_ERR")
      #|EQUAL
      #|INT("4")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INVALID_CHARACTER_ERR")
      #|EQUAL
      #|INT("5")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NO_DATA_ALLOWED_ERR")
      #|EQUAL
      #|INT("6")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NO_MODIFICATION_ALLOWED_ERR")
      #|EQUAL
      #|INT("7")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NOT_FOUND_ERR")
      #|EQUAL
      #|INT("8")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NOT_SUPPORTED_ERR")
      #|EQUAL
      #|INT("9")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INUSE_ATTRIBUTE_ERR")
      #|EQUAL
      #|INT("10")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INVALID_STATE_ERR")
      #|EQUAL
      #|INT("11")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("SYNTAX_ERR")
      #|EQUAL
      #|INT("12")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INVALID_MODIFICATION_ERR")
      #|EQUAL
      #|INT("13")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NAMESPACE_ERR")
      #|EQUAL
      #|INT("14")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INVALID_ACCESS_ERR")
      #|EQUAL
      #|INT("15")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("VALIDATION_ERR")
      #|EQUAL
      #|INT("16")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("TYPE_MISMATCH_ERR")
      #|EQUAL
      #|INT("17")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("SECURITY_ERR")
      #|EQUAL
      #|INT("18")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("NETWORK_ERR")
      #|EQUAL
      #|INT("19")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("ABORT_ERR")
      #|EQUAL
      #|INT("20")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("URL_MISMATCH_ERR")
      #|EQUAL
      #|INT("21")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("QUOTA_EXCEEDED_ERR")
      #|EQUAL
      #|INT("22")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("TIMEOUT_ERR")
      #|EQUAL
      #|INT("23")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("INVALID_NODE_TYPE_ERR")
      #|EQUAL
      #|INT("24")
      #|SEMI
      #|CONST
      #|UNSIGNED
      #|SHORT
      #|ID("DATA_CLONE_ERR")
      #|EQUAL
      #|INT("25")
      #|SEMI
      #|RBRACE
      #|SEMI
      #|CALLBACK
      #|ID("Function")
      #|EQUAL
      #|ANY
      #|LPAREN
      #|ANY
      #|ELLIPS
      #|ID("arguments")
      #|RPAREN
      #|SEMI
      #|CALLBACK
      #|ID("VoidFunction")
      #|EQUAL
      #|UNDEFINED
      #|LPAREN
      #|RPAREN
      #|SEMI
      #|EOF
    ),
  )
  inspect(
    parse_test(source),
    content=(
      #|@list.of([Interface({name: "QuotaExceededError", partial: false, members: @list.of([Constructor({arguments: @list.of([{name: "message", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"\"")), optional: true, variadic: false, attrs: @list.of([])}, {name: "options", idl_type: {attrs: @list.of([]), ty: Id("QuotaExceededErrorOptions")}, default: Some(Dictionary), optional: true, variadic: false, attrs: @list.of([])}]), attrs: @list.of([])}), Attribute({name: "quota", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Nullable(Floating(Double))}, attrs: @list.of([])}), Attribute({name: "requested", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Nullable(Floating(Double))}, attrs: @list.of([])})]), inherit: Some("DOMException"), attrs: @list.of([])}), Dictionary({name: "QuotaExceededErrorOptions", partial: false, members: @list.of([{name: "quota", required: false, idl_type: {attrs: @list.of([]), ty: Floating(Double)}, attrs: @list.of([]), default: None}, {name: "requested", required: false, idl_type: {attrs: @list.of([]), ty: Floating(Double)}, attrs: @list.of([]), default: None}]), inherit: None, attrs: @list.of([])}), Typedef({name: "ArrayBufferView", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: Int8Array}, {attrs: @list.of([]), ty: Int16Array}, {attrs: @list.of([]), ty: Int32Array}, {attrs: @list.of([]), ty: Uint8Array}, {attrs: @list.of([]), ty: Uint16Array}, {attrs: @list.of([]), ty: Uint32Array}, {attrs: @list.of([]), ty: Uint8ClampedArray}, {attrs: @list.of([]), ty: BigInt64Array}, {attrs: @list.of([]), ty: BigUint64Array}, {attrs: @list.of([]), ty: Float16Array}, {attrs: @list.of([]), ty: Float32Array}, {attrs: @list.of([]), ty: Float64Array}, {attrs: @list.of([]), ty: DataView}]))}, attrs: @list.of([])}), Typedef({name: "BufferSource", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: Id("ArrayBufferView")}, {attrs: @list.of([]), ty: ArrayBuffer}]))}, attrs: @list.of([])}), Typedef({name: "AllowSharedBufferSource", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: ArrayBuffer}, {attrs: @list.of([]), ty: SharedArrayBuffer}, {attrs: @list.of([]), ty: Id("ArrayBufferView")}]))}, attrs: @list.of([])}), Interface({name: "DOMException", partial: false, members: @list.of([Constructor({arguments: @list.of([{name: "message", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"\"")), optional: true, variadic: false, attrs: @list.of([])}, {name: "name", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"Error\"")), optional: true, variadic: false, attrs: @list.of([])}]), attrs: @list.of([])}), Attribute({name: "name", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: String(DOMString)}, attrs: @list.of([])}), Attribute({name: "message", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: String(DOMString)}, attrs: @list.of([])}), Attribute({name: "code", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Integer(Unsigned(Short))}, attrs: @list.of([])}), Const({name: "INDEX_SIZE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("1"), attrs: @list.of([])}), Const({name: "DOMSTRING_SIZE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("2"), attrs: @list.of([])}), Const({name: "HIERARCHY_REQUEST_ERR", idl_type: Integer(Unsigned(Short)), value: Number("3"), attrs: @list.of([])}), Const({name: "WRONG_DOCUMENT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("4"), attrs: @list.of([])}), Const({name: "INVALID_CHARACTER_ERR", idl_type: Integer(Unsigned(Short)), value: Number("5"), attrs: @list.of([])}), Const({name: "NO_DATA_ALLOWED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("6"), attrs: @list.of([])}), Const({name: "NO_MODIFICATION_ALLOWED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("7"), attrs: @list.of([])}), Const({name: "NOT_FOUND_ERR", idl_type: Integer(Unsigned(Short)), value: Number("8"), attrs: @list.of([])}), Const({name: "NOT_SUPPORTED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("9"), attrs: @list.of([])}), Const({name: "INUSE_ATTRIBUTE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("10"), attrs: @list.of([])}), Const({name: "INVALID_STATE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("11"), attrs: @list.of([])}), Const({name: "SYNTAX_ERR", idl_type: Integer(Unsigned(Short)), value: Number("12"), attrs: @list.of([])}), Const({name: "INVALID_MODIFICATION_ERR", idl_type: Integer(Unsigned(Short)), value: Number("13"), attrs: @list.of([])}), Const({name: "NAMESPACE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("14"), attrs: @list.of([])}), Const({name: "INVALID_ACCESS_ERR", idl_type: Integer(Unsigned(Short)), value: Number("15"), attrs: @list.of([])}), Const({name: "VALIDATION_ERR", idl_type: Integer(Unsigned(Short)), value: Number("16"), attrs: @list.of([])}), Const({name: "TYPE_MISMATCH_ERR", idl_type: Integer(Unsigned(Short)), value: Number("17"), attrs: @list.of([])}), Const({name: "SECURITY_ERR", idl_type: Integer(Unsigned(Short)), value: Number("18"), attrs: @list.of([])}), Const({name: "NETWORK_ERR", idl_type: Integer(Unsigned(Short)), value: Number("19"), attrs: @list.of([])}), Const({name: "ABORT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("20"), attrs: @list.of([])}), Const({name: "URL_MISMATCH_ERR", idl_type: Integer(Unsigned(Short)), value: Number("21"), attrs: @list.of([])}), Const({name: "QUOTA_EXCEEDED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("22"), attrs: @list.of([])}), Const({name: "TIMEOUT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("23"), attrs: @list.of([])}), Const({name: "INVALID_NODE_TYPE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("24"), attrs: @list.of([])}), Const({name: "DATA_CLONE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("25"), attrs: @list.of([])})]), inherit: None, attrs: @list.of([])}), Callback({name: "Function", idl_type: Any, arguments: @list.of([{name: "arguments", idl_type: {attrs: @list.of([]), ty: Any}, default: None, optional: false, variadic: true, attrs: @list.of([])}]), attrs: @list.of([])}), Callback({name: "VoidFunction", idl_type: Undefined, arguments: @list.of([]), attrs: @list.of([])})])
    ),
  )
}
