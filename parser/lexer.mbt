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
pub fn tokenize(
  input : @string.View,
  file? : String = "",
) -> Array[(Token, Position, Position)] raise IDLParseError {
  let mut line = 1
  let mut column = 1
  let mut remain = input
  let acc : Array[(Token, Position, Position)] = []
  fn push(token : Token, lexeme : @string.View, xs : @string.View) {
    let start = { file, line, column }
    let end = { file, line, column: column + lexeme.length() }
    acc.push((token, start, end))
    column += lexeme.length()
    remain = xs
  }

  for {
    lexmatch remain with longest {
      ("-?([1-9][0-9]*|0[Xx][0-9A-Fa-f]+|0[0-7]*)" as s, xs) =>
        push(INT(s.to_string()), s, xs)
      (
        "-?(([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([Ee][+\-]?[0-9]+)?|[0-9]+[Ee][+\-]?[0-9]+)" as s,
        xs
      ) => push(DECIMAL(s.to_string()), s, xs)
      ("[_\-]?[A-Za-z][0-9A-Z_a-z\-]*" as s, xs) => {
        let tok = match keywords.get(s.to_string()) {
          None => ID(s.to_string())
          Some(t) => t
        }
        push(tok, s, xs)
      }
      ("\"[^\"]*\"" as s, xs) => push(STRING(s.to_string()), s, xs)
      ("(\r\n)|\n", xs) => {
        line += 1
        column = 1
        remain = xs
      }
      ("[\t ]+" as s, xs) => {
        column += s.length()
        remain = xs
      }
      // FIXME: no-greedy 
      ("[/][/][^\n]*\n", xs) => {
        line += 1
        column = 1
        remain = xs
      }
      ("\/\*([^*]|\*+[^*/])*\*+\/" as s, xs) => {
        let strs = s.split("\n").collect()
        line += strs.length() - 1
        column += strs.last().unwrap_or("").length()
        remain = xs
      }
      // "-", xs => go(xs, acc.add_and_return(MINUS))
      // "\.", xs => go(xs, acc.add_and_return(DOT))
      ("\.\.\." as s, xs) => push(ELLIPS, s, xs)
      (":", xs) => push(COLON, ":", xs)
      (";", xs) => push(SEMI, ";", xs)
      ("<", xs) => push(LT, "<", xs)
      ("=", xs) => push(EQUAL, "=", xs)
      (">", xs) => push(GT, ">", xs)
      ("\?", xs) => push(QUESTION, "?", xs)
      ("\*", xs) => push(STAR, "*", xs)
      ("[{]", xs) => push(LBRACE, "{", xs)
      ("[}]", xs) => push(RBRACE, "}", xs)
      ("\(", xs) => push(LPAREN, "(", xs)
      ("\)", xs) => push(RPAREN, ")", xs)
      ("\[", xs) => push(LBRACKET, "[", xs)
      ("\]", xs) => push(RBRACKET, "]", xs)
      (",", xs) => push(COMMA, ",", xs)
      ("$", _) => {
        push(EOF, "", "")
        break
      }
      xs => raise LexFailed(xs)
    }
  }
  acc
}
