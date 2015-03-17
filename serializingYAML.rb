require 'yaml'
require File.expand_path("lib/virtual_store")

test_and_design = Book.new( "TDD", "John Stan", "123454", 247, 69.9, :tests )

library = Library.new
puts library.books
library.add test_and_design
