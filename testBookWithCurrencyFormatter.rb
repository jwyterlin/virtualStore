require File.expand_path("lib/virtual_store")

tdd = Book.new "TDD", "Mauricio Aniche", "123454", 247, :tests
p tdd.formatted_value
