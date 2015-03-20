require File.expand_path("lib/virtual_store")

# accessing class Set from namespace EasySell

set_of_books = EasySell::Set.new

set_of_books.add Book.new "TDD", "Mauricio Aniche", "123454", 247, :tests

p set_of_books
