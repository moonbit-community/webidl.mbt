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
fn Array::add_and_return(self : Self[Token], token : Token) -> Array[Token] {
  self.push(token)
  self
}

///|
pub fn lex_(input : @string.View) -> Array[Token] {
  fn go(input : @string.View, acc : Array[Token]) -> Array[Token] {
    lexmatch input {
      "-?([1-9][0-9]*|0[Xx][0-9A-Fa-f]+|0[0-7]*)" as s, xs =>
        go(xs, acc.add_and_return(INT(s.to_string())))
      "-?(([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([Ee][+\-]?[0-9]+)?|[0-9]+[Ee][+\-]?[0-9]+)" as s, xs =>
        go(xs, acc.add_and_return(DECIMAL(s.to_string())))
      "[_\-]?[A-Za-z][0-9A-Z_a-z\-]*" as s, xs => {
        let s = s.to_string()
        let tok = match keywords.get(s) {
          None => ID(s)
          Some(t) => t
        }
        go(xs, acc.add_and_return(tok))
      }
      "\"[^\"]*\"" as s, xs => go(xs, acc.add_and_return(STRING(s.to_string())))
      "[\t\n\r ]+", xs => go(xs, acc)
      // FIXME: no-greedy 
      "\/\/.*\n|\/\*(.|\n)*\*\/", xs => go(xs, acc)
      // "-", xs => go(xs, acc.add_and_return(MINUS))
      // "\.", xs => go(xs, acc.add_and_return(DOT))
      "\.\.\.", xs => go(xs, acc.add_and_return(ELLIPS))
      ":", xs => go(xs, acc.add_and_return(COLON))
      ";", xs => go(xs, acc.add_and_return(SEMI))
      "<", xs => go(xs, acc.add_and_return(LT))
      "=", xs => go(xs, acc.add_and_return(EQUAL))
      ">", xs => go(xs, acc.add_and_return(GT))
      "\?", xs => go(xs, acc.add_and_return(QUESTION))
      "\*", xs => go(xs, acc.add_and_return(STAR))
      "[{]", xs => go(xs, acc.add_and_return(LBRACE))
      "[}]", xs => go(xs, acc.add_and_return(RBRACE))
      "\(", xs => go(xs, acc.add_and_return(LPAREN))
      "\)", xs => go(xs, acc.add_and_return(RPAREN))
      "\[", xs => go(xs, acc.add_and_return(LBRACKET))
      "\]", xs => go(xs, acc.add_and_return(RBRACKET))
      ",", xs => go(xs, acc.add_and_return(COMMA))
      "$", _xs => acc.add_and_return(EOF)
      xs => {
        println(xs)
        panic()
      }
    }
  }

  go(input, [])
}
