///|
fn lex_test(input : String) -> String {
  let tokens = lex_(input) catch {
    err => {
      println(err)
      []
    }
  }
  tokens.fold(init="", fn(acc, x) { acc + "\n" + x.to_string() })
}

///|
fn parse_test(input : String) -> @list.List[@syntax.Definition] {
  parse(lex_(input)) catch {
    err => {
      println(err)
      @list.empty()
    }
  }
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
      #|(LBRACKET, 1:1, 1:2)
      #|(ID("Exposed"), 1:2, 1:9)
      #|(EQUAL, 1:9, 1:10)
      #|(STAR, 1:10, 1:11)
      #|(COMMA, 1:11, 1:12)
      #|(ID("Serializable"), 1:13, 1:25)
      #|(RBRACKET, 1:25, 1:26)
      #|(INTERFACE, 2:1, 2:10)
      #|(ID("QuotaExceededError"), 2:11, 2:29)
      #|(COLON, 2:30, 2:31)
      #|(ID("DOMException"), 2:32, 2:44)
      #|(LBRACE, 2:45, 2:46)
      #|(CONSTRUCTOR, 3:3, 3:14)
      #|(LPAREN, 3:14, 3:15)
      #|(OPTIONAL, 3:15, 3:23)
      #|(DOMSTRING, 3:24, 3:33)
      #|(ID("message"), 3:34, 3:41)
      #|(EQUAL, 3:42, 3:43)
      #|(STRING("\"\""), 3:44, 3:46)
      #|(COMMA, 3:46, 3:47)
      #|(OPTIONAL, 3:48, 3:56)
      #|(ID("QuotaExceededErrorOptions"), 3:57, 3:82)
      #|(ID("options"), 3:83, 3:90)
      #|(EQUAL, 3:91, 3:92)
      #|(LBRACE, 3:93, 3:94)
      #|(RBRACE, 3:94, 3:95)
      #|(RPAREN, 3:95, 3:96)
      #|(SEMI, 3:96, 3:97)
      #|(READONLY, 5:3, 5:11)
      #|(ATTRIBUTE, 5:12, 5:21)
      #|(DOUBLE, 5:22, 5:28)
      #|(QUESTION, 5:28, 5:29)
      #|(ID("quota"), 5:30, 5:35)
      #|(SEMI, 5:35, 5:36)
      #|(READONLY, 6:3, 6:11)
      #|(ATTRIBUTE, 6:12, 6:21)
      #|(DOUBLE, 6:22, 6:28)
      #|(QUESTION, 6:28, 6:29)
      #|(ID("requested"), 6:30, 6:39)
      #|(SEMI, 6:39, 6:40)
      #|(RBRACE, 7:1, 7:2)
      #|(SEMI, 7:2, 7:3)
      #|(DICTIONARY, 9:1, 9:11)
      #|(ID("QuotaExceededErrorOptions"), 9:12, 9:37)
      #|(LBRACE, 9:38, 9:39)
      #|(DOUBLE, 10:3, 10:9)
      #|(ID("quota"), 10:10, 10:15)
      #|(SEMI, 10:15, 10:16)
      #|(DOUBLE, 11:3, 11:9)
      #|(ID("requested"), 11:10, 11:19)
      #|(SEMI, 11:19, 11:20)
      #|(RBRACE, 12:1, 12:2)
      #|(SEMI, 12:2, 12:3)
      #|(TYPEDEF, 14:1, 14:8)
      #|(LPAREN, 14:9, 14:10)
      #|(INT8ARRAY, 14:10, 14:19)
      #|(OR, 14:20, 14:22)
      #|(INT16ARRAY, 14:23, 14:33)
      #|(OR, 14:34, 14:36)
      #|(INT32ARRAY, 14:37, 14:47)
      #|(OR, 14:48, 14:50)
      #|(UINT8ARRAY, 15:10, 15:20)
      #|(OR, 15:21, 15:23)
      #|(UINT16ARRAY, 15:24, 15:35)
      #|(OR, 15:36, 15:38)
      #|(UINT32ARRAY, 15:39, 15:50)
      #|(OR, 15:51, 15:53)
      #|(UINT8CLAMPEDARRAY, 15:54, 15:71)
      #|(OR, 15:72, 15:74)
      #|(BIGINT64ARRAY, 16:10, 16:23)
      #|(OR, 16:24, 16:26)
      #|(BIGUINT64ARRAY, 16:27, 16:41)
      #|(OR, 16:42, 16:44)
      #|(FLOAT16ARRAY, 17:10, 17:22)
      #|(OR, 17:23, 17:25)
      #|(FLOAT32ARRAY, 17:26, 17:38)
      #|(OR, 17:39, 17:41)
      #|(FLOAT64ARRAY, 17:42, 17:54)
      #|(OR, 17:55, 17:57)
      #|(DATAVIEW, 17:58, 17:66)
      #|(RPAREN, 17:66, 17:67)
      #|(ID("ArrayBufferView"), 17:68, 17:83)
      #|(SEMI, 17:83, 17:84)
      #|(TYPEDEF, 19:1, 19:8)
      #|(LPAREN, 19:9, 19:10)
      #|(ID("ArrayBufferView"), 19:10, 19:25)
      #|(OR, 19:26, 19:28)
      #|(ARRAYBUFFER, 19:29, 19:40)
      #|(RPAREN, 19:40, 19:41)
      #|(ID("BufferSource"), 19:42, 19:54)
      #|(SEMI, 19:54, 19:55)
      #|(TYPEDEF, 20:1, 20:8)
      #|(LPAREN, 20:9, 20:10)
      #|(ARRAYBUFFER, 20:10, 20:21)
      #|(OR, 20:22, 20:24)
      #|(SHAREDARRAYBUFFER, 20:25, 20:42)
      #|(OR, 20:43, 20:45)
      #|(LBRACKET, 20:46, 20:47)
      #|(ID("AllowShared"), 20:47, 20:58)
      #|(RBRACKET, 20:58, 20:59)
      #|(ID("ArrayBufferView"), 20:60, 20:75)
      #|(RPAREN, 20:75, 20:76)
      #|(ID("AllowSharedBufferSource"), 20:77, 20:100)
      #|(SEMI, 20:100, 20:101)
      #|(LBRACKET, 21:1, 21:2)
      #|(ID("Exposed"), 21:2, 21:9)
      #|(EQUAL, 21:9, 21:10)
      #|(STAR, 21:10, 21:11)
      #|(COMMA, 21:11, 21:12)
      #|(ID("Serializable"), 22:2, 22:14)
      #|(RBRACKET, 22:14, 22:15)
      #|(INTERFACE, 23:1, 23:10)
      #|(ID("DOMException"), 23:11, 23:23)
      #|(LBRACE, 23:24, 23:25)
      #|(CONSTRUCTOR, 24:3, 24:14)
      #|(LPAREN, 24:14, 24:15)
      #|(OPTIONAL, 24:15, 24:23)
      #|(DOMSTRING, 24:24, 24:33)
      #|(ID("message"), 24:34, 24:41)
      #|(EQUAL, 24:42, 24:43)
      #|(STRING("\"\""), 24:44, 24:46)
      #|(COMMA, 24:46, 24:47)
      #|(OPTIONAL, 24:48, 24:56)
      #|(DOMSTRING, 24:57, 24:66)
      #|(ID("name"), 24:67, 24:71)
      #|(EQUAL, 24:72, 24:73)
      #|(STRING("\"Error\""), 24:74, 24:81)
      #|(RPAREN, 24:81, 24:82)
      #|(SEMI, 24:82, 24:83)
      #|(READONLY, 25:3, 25:11)
      #|(ATTRIBUTE, 25:12, 25:21)
      #|(DOMSTRING, 25:22, 25:31)
      #|(ID("name"), 25:32, 25:36)
      #|(SEMI, 25:36, 25:37)
      #|(READONLY, 26:3, 26:11)
      #|(ATTRIBUTE, 26:12, 26:21)
      #|(DOMSTRING, 26:22, 26:31)
      #|(ID("message"), 26:32, 26:39)
      #|(SEMI, 26:39, 26:40)
      #|(READONLY, 27:3, 27:11)
      #|(ATTRIBUTE, 27:12, 27:21)
      #|(UNSIGNED, 27:22, 27:30)
      #|(SHORT, 27:31, 27:36)
      #|(ID("code"), 27:37, 27:41)
      #|(SEMI, 27:41, 27:42)
      #|(CONST, 29:3, 29:8)
      #|(UNSIGNED, 29:9, 29:17)
      #|(SHORT, 29:18, 29:23)
      #|(ID("INDEX_SIZE_ERR"), 29:24, 29:38)
      #|(EQUAL, 29:39, 29:40)
      #|(INT("1"), 29:41, 29:42)
      #|(SEMI, 29:42, 29:43)
      #|(CONST, 30:3, 30:8)
      #|(UNSIGNED, 30:9, 30:17)
      #|(SHORT, 30:18, 30:23)
      #|(ID("DOMSTRING_SIZE_ERR"), 30:24, 30:42)
      #|(EQUAL, 30:43, 30:44)
      #|(INT("2"), 30:45, 30:46)
      #|(SEMI, 30:46, 30:47)
      #|(CONST, 31:3, 31:8)
      #|(UNSIGNED, 31:9, 31:17)
      #|(SHORT, 31:18, 31:23)
      #|(ID("HIERARCHY_REQUEST_ERR"), 31:24, 31:45)
      #|(EQUAL, 31:46, 31:47)
      #|(INT("3"), 31:48, 31:49)
      #|(SEMI, 31:49, 31:50)
      #|(CONST, 32:3, 32:8)
      #|(UNSIGNED, 32:9, 32:17)
      #|(SHORT, 32:18, 32:23)
      #|(ID("WRONG_DOCUMENT_ERR"), 32:24, 32:42)
      #|(EQUAL, 32:43, 32:44)
      #|(INT("4"), 32:45, 32:46)
      #|(SEMI, 32:46, 32:47)
      #|(CONST, 33:3, 33:8)
      #|(UNSIGNED, 33:9, 33:17)
      #|(SHORT, 33:18, 33:23)
      #|(ID("INVALID_CHARACTER_ERR"), 33:24, 33:45)
      #|(EQUAL, 33:46, 33:47)
      #|(INT("5"), 33:48, 33:49)
      #|(SEMI, 33:49, 33:50)
      #|(CONST, 34:3, 34:8)
      #|(UNSIGNED, 34:9, 34:17)
      #|(SHORT, 34:18, 34:23)
      #|(ID("NO_DATA_ALLOWED_ERR"), 34:24, 34:43)
      #|(EQUAL, 34:44, 34:45)
      #|(INT("6"), 34:46, 34:47)
      #|(SEMI, 34:47, 34:48)
      #|(CONST, 35:3, 35:8)
      #|(UNSIGNED, 35:9, 35:17)
      #|(SHORT, 35:18, 35:23)
      #|(ID("NO_MODIFICATION_ALLOWED_ERR"), 35:24, 35:51)
      #|(EQUAL, 35:52, 35:53)
      #|(INT("7"), 35:54, 35:55)
      #|(SEMI, 35:55, 35:56)
      #|(CONST, 36:3, 36:8)
      #|(UNSIGNED, 36:9, 36:17)
      #|(SHORT, 36:18, 36:23)
      #|(ID("NOT_FOUND_ERR"), 36:24, 36:37)
      #|(EQUAL, 36:38, 36:39)
      #|(INT("8"), 36:40, 36:41)
      #|(SEMI, 36:41, 36:42)
      #|(CONST, 37:3, 37:8)
      #|(UNSIGNED, 37:9, 37:17)
      #|(SHORT, 37:18, 37:23)
      #|(ID("NOT_SUPPORTED_ERR"), 37:24, 37:41)
      #|(EQUAL, 37:42, 37:43)
      #|(INT("9"), 37:44, 37:45)
      #|(SEMI, 37:45, 37:46)
      #|(CONST, 38:3, 38:8)
      #|(UNSIGNED, 38:9, 38:17)
      #|(SHORT, 38:18, 38:23)
      #|(ID("INUSE_ATTRIBUTE_ERR"), 38:24, 38:43)
      #|(EQUAL, 38:44, 38:45)
      #|(INT("10"), 38:46, 38:48)
      #|(SEMI, 38:48, 38:49)
      #|(CONST, 39:3, 39:8)
      #|(UNSIGNED, 39:9, 39:17)
      #|(SHORT, 39:18, 39:23)
      #|(ID("INVALID_STATE_ERR"), 39:24, 39:41)
      #|(EQUAL, 39:42, 39:43)
      #|(INT("11"), 39:44, 39:46)
      #|(SEMI, 39:46, 39:47)
      #|(CONST, 40:3, 40:8)
      #|(UNSIGNED, 40:9, 40:17)
      #|(SHORT, 40:18, 40:23)
      #|(ID("SYNTAX_ERR"), 40:24, 40:34)
      #|(EQUAL, 40:35, 40:36)
      #|(INT("12"), 40:37, 40:39)
      #|(SEMI, 40:39, 40:40)
      #|(CONST, 41:3, 41:8)
      #|(UNSIGNED, 41:9, 41:17)
      #|(SHORT, 41:18, 41:23)
      #|(ID("INVALID_MODIFICATION_ERR"), 41:24, 41:48)
      #|(EQUAL, 41:49, 41:50)
      #|(INT("13"), 41:51, 41:53)
      #|(SEMI, 41:53, 41:54)
      #|(CONST, 42:3, 42:8)
      #|(UNSIGNED, 42:9, 42:17)
      #|(SHORT, 42:18, 42:23)
      #|(ID("NAMESPACE_ERR"), 42:24, 42:37)
      #|(EQUAL, 42:38, 42:39)
      #|(INT("14"), 42:40, 42:42)
      #|(SEMI, 42:42, 42:43)
      #|(CONST, 43:3, 43:8)
      #|(UNSIGNED, 43:9, 43:17)
      #|(SHORT, 43:18, 43:23)
      #|(ID("INVALID_ACCESS_ERR"), 43:24, 43:42)
      #|(EQUAL, 43:43, 43:44)
      #|(INT("15"), 43:45, 43:47)
      #|(SEMI, 43:47, 43:48)
      #|(CONST, 44:3, 44:8)
      #|(UNSIGNED, 44:9, 44:17)
      #|(SHORT, 44:18, 44:23)
      #|(ID("VALIDATION_ERR"), 44:24, 44:38)
      #|(EQUAL, 44:39, 44:40)
      #|(INT("16"), 44:41, 44:43)
      #|(SEMI, 44:43, 44:44)
      #|(CONST, 45:3, 45:8)
      #|(UNSIGNED, 45:9, 45:17)
      #|(SHORT, 45:18, 45:23)
      #|(ID("TYPE_MISMATCH_ERR"), 45:24, 45:41)
      #|(EQUAL, 45:42, 45:43)
      #|(INT("17"), 45:44, 45:46)
      #|(SEMI, 45:46, 45:47)
      #|(CONST, 46:3, 46:8)
      #|(UNSIGNED, 46:9, 46:17)
      #|(SHORT, 46:18, 46:23)
      #|(ID("SECURITY_ERR"), 46:24, 46:36)
      #|(EQUAL, 46:37, 46:38)
      #|(INT("18"), 46:39, 46:41)
      #|(SEMI, 46:41, 46:42)
      #|(CONST, 47:3, 47:8)
      #|(UNSIGNED, 47:9, 47:17)
      #|(SHORT, 47:18, 47:23)
      #|(ID("NETWORK_ERR"), 47:24, 47:35)
      #|(EQUAL, 47:36, 47:37)
      #|(INT("19"), 47:38, 47:40)
      #|(SEMI, 47:40, 47:41)
      #|(CONST, 48:3, 48:8)
      #|(UNSIGNED, 48:9, 48:17)
      #|(SHORT, 48:18, 48:23)
      #|(ID("ABORT_ERR"), 48:24, 48:33)
      #|(EQUAL, 48:34, 48:35)
      #|(INT("20"), 48:36, 48:38)
      #|(SEMI, 48:38, 48:39)
      #|(CONST, 49:3, 49:8)
      #|(UNSIGNED, 49:9, 49:17)
      #|(SHORT, 49:18, 49:23)
      #|(ID("URL_MISMATCH_ERR"), 49:24, 49:40)
      #|(EQUAL, 49:41, 49:42)
      #|(INT("21"), 49:43, 49:45)
      #|(SEMI, 49:45, 49:46)
      #|(CONST, 50:3, 50:8)
      #|(UNSIGNED, 50:9, 50:17)
      #|(SHORT, 50:18, 50:23)
      #|(ID("QUOTA_EXCEEDED_ERR"), 50:24, 50:42)
      #|(EQUAL, 50:43, 50:44)
      #|(INT("22"), 50:45, 50:47)
      #|(SEMI, 50:47, 50:48)
      #|(CONST, 51:3, 51:8)
      #|(UNSIGNED, 51:9, 51:17)
      #|(SHORT, 51:18, 51:23)
      #|(ID("TIMEOUT_ERR"), 51:24, 51:35)
      #|(EQUAL, 51:36, 51:37)
      #|(INT("23"), 51:38, 51:40)
      #|(SEMI, 51:40, 51:41)
      #|(CONST, 52:3, 52:8)
      #|(UNSIGNED, 52:9, 52:17)
      #|(SHORT, 52:18, 52:23)
      #|(ID("INVALID_NODE_TYPE_ERR"), 52:24, 52:45)
      #|(EQUAL, 52:46, 52:47)
      #|(INT("24"), 52:48, 52:50)
      #|(SEMI, 52:50, 52:51)
      #|(CONST, 53:3, 53:8)
      #|(UNSIGNED, 53:9, 53:17)
      #|(SHORT, 53:18, 53:23)
      #|(ID("DATA_CLONE_ERR"), 53:24, 53:38)
      #|(EQUAL, 53:39, 53:40)
      #|(INT("25"), 53:41, 53:43)
      #|(SEMI, 53:43, 53:44)
      #|(RBRACE, 54:1, 54:2)
      #|(SEMI, 54:2, 54:3)
      #|(CALLBACK, 56:1, 56:9)
      #|(ID("Function"), 56:10, 56:18)
      #|(EQUAL, 56:19, 56:20)
      #|(ANY, 56:21, 56:24)
      #|(LPAREN, 56:25, 56:26)
      #|(ANY, 56:26, 56:29)
      #|(ELLIPS, 56:29, 56:32)
      #|(ID("arguments"), 56:33, 56:42)
      #|(RPAREN, 56:42, 56:43)
      #|(SEMI, 56:43, 56:44)
      #|(CALLBACK, 57:1, 57:9)
      #|(ID("VoidFunction"), 57:10, 57:22)
      #|(EQUAL, 57:23, 57:24)
      #|(UNDEFINED, 57:25, 57:34)
      #|(LPAREN, 57:35, 57:36)
      #|(RPAREN, 57:36, 57:37)
      #|(SEMI, 57:37, 57:38)
      #|(EOF, 57:39, 57:40)
    ),
  )
  inspect(
    parse_test(source),
    content=(
      #|@list.of([Interface({name: "QuotaExceededError", partial: false, members: @list.of([Constructor({arguments: @list.of([{name: "message", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"\"")), optional: true, variadic: false, attrs: @list.of([])}, {name: "options", idl_type: {attrs: @list.of([]), ty: Id("QuotaExceededErrorOptions")}, default: Some(Dictionary), optional: true, variadic: false, attrs: @list.of([])}]), attrs: @list.of([])}), Attribute({name: "quota", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Nullable(Floating(Double))}, attrs: @list.of([])}), Attribute({name: "requested", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Nullable(Floating(Double))}, attrs: @list.of([])})]), inheritance: Some("DOMException"), attrs: @list.of([{name: "Exposed", rhs: WildCard}, {name: "Serializable", rhs: NoArgs}])}), Dictionary({name: "QuotaExceededErrorOptions", partial: false, members: @list.of([{name: "quota", required: false, idl_type: {attrs: @list.of([]), ty: Floating(Double)}, attrs: @list.of([]), default: None}, {name: "requested", required: false, idl_type: {attrs: @list.of([]), ty: Floating(Double)}, attrs: @list.of([]), default: None}]), inheritance: None, attrs: @list.of([])}), Typedef({name: "ArrayBufferView", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: Int8Array}, {attrs: @list.of([]), ty: Int16Array}, {attrs: @list.of([]), ty: Int32Array}, {attrs: @list.of([]), ty: Uint8Array}, {attrs: @list.of([]), ty: Uint16Array}, {attrs: @list.of([]), ty: Uint32Array}, {attrs: @list.of([]), ty: Uint8ClampedArray}, {attrs: @list.of([]), ty: BigInt64Array}, {attrs: @list.of([]), ty: BigUint64Array}, {attrs: @list.of([]), ty: Float16Array}, {attrs: @list.of([]), ty: Float32Array}, {attrs: @list.of([]), ty: Float64Array}, {attrs: @list.of([]), ty: DataView}]))}, attrs: @list.of([])}), Typedef({name: "BufferSource", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: Id("ArrayBufferView")}, {attrs: @list.of([]), ty: ArrayBuffer}]))}, attrs: @list.of([])}), Typedef({name: "AllowSharedBufferSource", idl_type: {attrs: @list.of([]), ty: Union(@list.of([{attrs: @list.of([]), ty: ArrayBuffer}, {attrs: @list.of([]), ty: SharedArrayBuffer}, {attrs: @list.of([{name: "AllowShared", rhs: NoArgs}]), ty: Id("ArrayBufferView")}]))}, attrs: @list.of([])}), Interface({name: "DOMException", partial: false, members: @list.of([Constructor({arguments: @list.of([{name: "message", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"\"")), optional: true, variadic: false, attrs: @list.of([])}, {name: "name", idl_type: {attrs: @list.of([]), ty: String(DOMString)}, default: Some(String("\"Error\"")), optional: true, variadic: false, attrs: @list.of([])}]), attrs: @list.of([])}), Attribute({name: "name", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: String(DOMString)}, attrs: @list.of([])}), Attribute({name: "message", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: String(DOMString)}, attrs: @list.of([])}), Attribute({name: "code", special: Regular, readonly_: true, idl_type: {attrs: @list.of([]), ty: Integer(Unsigned(Short))}, attrs: @list.of([])}), Const({name: "INDEX_SIZE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("1"), attrs: @list.of([])}), Const({name: "DOMSTRING_SIZE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("2"), attrs: @list.of([])}), Const({name: "HIERARCHY_REQUEST_ERR", idl_type: Integer(Unsigned(Short)), value: Number("3"), attrs: @list.of([])}), Const({name: "WRONG_DOCUMENT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("4"), attrs: @list.of([])}), Const({name: "INVALID_CHARACTER_ERR", idl_type: Integer(Unsigned(Short)), value: Number("5"), attrs: @list.of([])}), Const({name: "NO_DATA_ALLOWED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("6"), attrs: @list.of([])}), Const({name: "NO_MODIFICATION_ALLOWED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("7"), attrs: @list.of([])}), Const({name: "NOT_FOUND_ERR", idl_type: Integer(Unsigned(Short)), value: Number("8"), attrs: @list.of([])}), Const({name: "NOT_SUPPORTED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("9"), attrs: @list.of([])}), Const({name: "INUSE_ATTRIBUTE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("10"), attrs: @list.of([])}), Const({name: "INVALID_STATE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("11"), attrs: @list.of([])}), Const({name: "SYNTAX_ERR", idl_type: Integer(Unsigned(Short)), value: Number("12"), attrs: @list.of([])}), Const({name: "INVALID_MODIFICATION_ERR", idl_type: Integer(Unsigned(Short)), value: Number("13"), attrs: @list.of([])}), Const({name: "NAMESPACE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("14"), attrs: @list.of([])}), Const({name: "INVALID_ACCESS_ERR", idl_type: Integer(Unsigned(Short)), value: Number("15"), attrs: @list.of([])}), Const({name: "VALIDATION_ERR", idl_type: Integer(Unsigned(Short)), value: Number("16"), attrs: @list.of([])}), Const({name: "TYPE_MISMATCH_ERR", idl_type: Integer(Unsigned(Short)), value: Number("17"), attrs: @list.of([])}), Const({name: "SECURITY_ERR", idl_type: Integer(Unsigned(Short)), value: Number("18"), attrs: @list.of([])}), Const({name: "NETWORK_ERR", idl_type: Integer(Unsigned(Short)), value: Number("19"), attrs: @list.of([])}), Const({name: "ABORT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("20"), attrs: @list.of([])}), Const({name: "URL_MISMATCH_ERR", idl_type: Integer(Unsigned(Short)), value: Number("21"), attrs: @list.of([])}), Const({name: "QUOTA_EXCEEDED_ERR", idl_type: Integer(Unsigned(Short)), value: Number("22"), attrs: @list.of([])}), Const({name: "TIMEOUT_ERR", idl_type: Integer(Unsigned(Short)), value: Number("23"), attrs: @list.of([])}), Const({name: "INVALID_NODE_TYPE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("24"), attrs: @list.of([])}), Const({name: "DATA_CLONE_ERR", idl_type: Integer(Unsigned(Short)), value: Number("25"), attrs: @list.of([])})]), inheritance: None, attrs: @list.of([{name: "Exposed", rhs: WildCard}, {name: "Serializable", rhs: NoArgs}])}), Callback({name: "Function", idl_type: Any, arguments: @list.of([{name: "arguments", idl_type: {attrs: @list.of([]), ty: Any}, default: None, optional: false, variadic: true, attrs: @list.of([])}]), attrs: @list.of([])}), Callback({name: "VoidFunction", idl_type: Undefined, arguments: @list.of([]), attrs: @list.of([])})])
    ),
  )
}
