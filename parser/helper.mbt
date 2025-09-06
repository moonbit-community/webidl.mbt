///|
pub fn parse(tokens : Array[Token]) -> List[Definition] {
  let tokens = tokens.map(x => (x, (), ()))
  definitions(tokens) catch {
    UnexpectedToken(token, _, remain) => {
      println("UnexpectedToken: \{token}, \{remain}")
      @list.empty()
    }
    UnexpectedEndOfInput(_, remain) => {
      println("UnexpectedEOF: \{remain}")
      @list.empty()
    }
  }
}
