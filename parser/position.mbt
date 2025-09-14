///|
pub(all) struct Position {
  file : String
  line : Int
  column : Int
} derive(Eq, Compare, Hash)

///|
pub impl Show for Position with output(self, logger) {
  if self.file != "" {
    logger..write_string(self.file)..write_string(":")
  }
  logger
  ..write_string(self.line.to_string())
  ..write_string(":")
  ..write_string(self.column.to_string())
}
