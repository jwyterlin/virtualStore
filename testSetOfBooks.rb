require File.expand_path("lib/virtual_store")

set_of_books = Set.new

set_of_books.add Book.new "TDD", "Mauricio Aniche", "123454", 247, :tests

p set_of_books
