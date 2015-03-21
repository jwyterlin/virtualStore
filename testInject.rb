require File.expand_path("lib/virtual_store")

library = Library.new

library.add Book.new "TDD", "Mauricio Aniche", "123454", 247, 69.9, :tests

library.add Book.new "Responsive Web Design", "Tárcio Zemel", "45256", 240, 69.9, :web

p library.inject(0) { |total, book| total += book.value }
