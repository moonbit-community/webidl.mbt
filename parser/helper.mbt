///|
pub fn parse(
  tokens : Array[(Token, Position, Position)],
) -> List[Definition] raise ParseError {
  definitions(tokens)
}

///|
pub(all) suberror IDLParseError {
  LexFailed(StringView)
  ParseFailed(ParseError)
}

///|
pub impl Show for IDLParseError with output(self, logger) {
  match self {
    LexFailed(remain) =>
      logger.write_string("LexError unexpected input: \{remain}")
    ParseFailed(UnexpectedToken(token, (start, end), remain)) =>
      logger.write_string(
        "UnexpectedToken at (\{start}, \{end}): \{token}, \{remain}",
      )
    ParseFailed(UnexpectedEndOfInput(pos, remain)) =>
      logger.write_string("UnexpectedEOF: \{pos}, \{remain}")
  }
}

///|
pub impl Show for ParseError with output(self, logger) {
  match self {
    UnexpectedToken(token, (start, end), remain) =>
      logger.write_string(
        "UnexpectedToken at (\{start}, \{end}): \{token}, \{remain}",
      )
    UnexpectedEndOfInput(pos, remain) =>
      logger.write_string("UnexpectedEOF: \{pos}, \{remain}")
  }
}

///|
/// Parse a string containing WebIDL definitions.
/// 
/// # Raises
/// 
/// - `LexFailed` if the input cannot be tokenized.
/// - `ParseFailed` if the tokenized input cannot be parsed.
/// 
pub fn parse_string(
  source : String,
  file? : String = "",
) -> @syntax.Definitions raise IDLParseError {
  let tokens = tokenize(source.to_string_view(), file~)
  parse(tokens) catch {
    e => raise ParseFailed(e)
  }
}
