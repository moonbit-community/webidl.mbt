///|
fn parse(source : String) -> @syntax.Definitions {
  let tokens = @parser.lex_(source)
  @parser.parse(tokens)
}
