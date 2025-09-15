///|
let base = "testsuit/__snapshot__/"

///|
typealias @parser.(Token, Position)

///|
fn @test.T::write_tokens(
  self : Self,
  tokens : Array[(Token, Position, Position)],
) -> Unit {
  for t in tokens {
    self.writeln("\{t.0}, \{t.1}-\{t.2}")
  }
}

///|
fn @test.T::run(self : Self) -> Unit raise {
  let file = self.name + ".idl"
  let source = @fs.read_file_to_string(base + file)
  let tokens = @parser.tokenize(source)
  self.write_tokens(tokens)
  self.writeln("---------------------------------------------")
  let ast = @parser.parse(tokens)
  self.writeln(@prettyprinter.render(ast))
  self.snapshot(filename=self.name + ".out")
}

///|
test "html" (t : @test.T) {
  t.run()
}

///|
test "dom" (t : @test.T) {
  t.run()
}
