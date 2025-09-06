///|
let keywords : Map[String, Token] = {
  "attribute": ATTRIBUTE,
  "callback": CALLBACK,
  "const": CONST,
  "constructor": CONSTRUCTOR,
  "deleter": DELETER,
  "dictionary": DICTIONARY,
  "enum": ENUM,
  "getter": GETTER,
  "includes": INCLUDES,
  "inherit": INHERIT,
  "interface": INTERFACE,
  "iterable": ITERABLE,
  "maplike": MAPLIKE,
  "mixin": MIXIN,
  "namespace": NAMESPACE,
  "partial": PARTIAL,
  "readonly": READONLY,
  "required": REQUIRED,
  "setlike": SETLIKE,
  "setter": SETTER,
  "static": STATIC,
  "stringifier": STRINGIFIER,
  "typedef": TYPEDEF,
  "unrestricted": UNRESTRICTED,
  "ArrayBuffer": ARRAYBUFFER,
  "SharedArrayBuffer": SHAREDARRAYBUFFER,
  "DataView": DATAVIEW,
  "Int8Array": INT8ARRAY,
  "Int16Array": INT16ARRAY,
  "Int32Array": INT32ARRAY,
  "Uint8Array": UINT8ARRAY,
  "Uint16Array": UINT16ARRAY,
  "Uint32Array": UINT32ARRAY,
  "Uint8ClampedArray": UINT8CLAMPEDARRAY,
  "BigInt64Array": BIGINT64ARRAY,
  "BigUint64Array": BIGUINT64ARRAY,
  "Float16Array": FLOAT16ARRAY,
  "Float32Array": FLOAT32ARRAY,
  "Float64Array": FLOAT64ARRAY,
  "ByteString": BYTESTRING,
  "DOMString": DOMSTRING,
  "USVString": USVSTRING,
  "FrozenArray": FROZENARRAY,
  "Infinity": INFINITY,
  "-Infinity": NEGINFINITY,
  "NaN": NAN,
  "ObservableArray": OBSERVABLEARRAY,
  "Promise": PROMISE,
  "any": ANY,
  "bigint": BIGINT,
  "boolean": BOOLEAN,
  "byte": BYTE,
  "double": DOUBLE,
  "float": FLOAT,
  "long": LONG,
  "object": OBJECT,
  "octet": OCTET,
  "record": RECORD,
  "sequence": SEQUENCE,
  "short": SHORT,
  "symbol": SYMBOL,
  "unsigned": UNSIGNED,
  "async_iterable": ASYNCITERABLE,
  "async_sequence": ASYNCSEQUENCE,
  "false": FALSE,
  "true": TRUE,
  "null": NULL,
  "undefined": UNDEFINED,
  "optional": OPTIONAL,
  "or": OR,
}

///|
fn Array::add(self : Self[Token], token : Token) -> Array[Token] {
  self.push(token)
  self
}

///|
pub fn lex_(input : @string.View) -> Array[Token] {
  fn go(input : @string.View, acc : Array[Token]) -> Array[Token] {
    lexmatch input {
      re"-?([1-9][0-9]*|0[Xx][0-9A-Fa-f]+|0[0-7]*)" as s, xs =>
        go(xs, acc.add(INT(s.to_string())))
      re"-?(([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([Ee][+\-]?[0-9]+)?|[0-9]+[Ee][+\-]?[0-9]+)" as s, xs =>
        go(xs, acc.add(DECIMAL(s.to_string())))
      re"[_\-]?[A-Za-z][0-9A-Z_a-z\-]*" as s, xs => {
        let s = s.to_string()
        let tok = match keywords.get(s) {
          None => ID(s)
          Some(t) => t
        }
        go(xs, acc.add(tok))
      }
      re"\"[^\"]*\"" as s, xs => go(xs, acc.add(STRING(s.to_string())))
      re"[\t\n\r ]+", xs => go(xs, acc)
      // FIXME: no-greedy 
      re"\/\/.*\n|\/\*(.|\n)*\*\/", xs => go(xs, acc)
      re"-", xs => go(xs, acc.add(MINUS))
      re"\.", xs => go(xs, acc.add(DOT))
      re"\.\.\.", xs => go(xs, acc.add(ELLIPS))
      re":", xs => go(xs, acc.add(COLON))
      re";", xs => go(xs, acc.add(SEMI))
      re"<", xs => go(xs, acc.add(LT))
      re"=", xs => go(xs, acc.add(EQUAL))
      re">", xs => go(xs, acc.add(GT))
      re"\?", xs => go(xs, acc.add(QUESTION))
      re"\*", xs => go(xs, acc.add(STAR))
      re"\{", xs => go(xs, acc.add(LBRACE))
      re"\}", xs => go(xs, acc.add(RBRACE))
      re"\(", xs => go(xs, acc.add(LPAREN))
      re"\)", xs => go(xs, acc.add(RPAREN))
      re"\[", xs => go(xs, acc.add(LBRACKET))
      re"\]", xs => go(xs, acc.add(RBRACKET))
      re",", xs => go(xs, acc.add(COMMA))
      re"$", xs => acc.add(EOF)
      xs => {
        println(xs)
        panic()
      }
    }
  }

  go(input, [])
}
