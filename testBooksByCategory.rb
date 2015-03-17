require File.expand_path("lib/virtual_store")

library = Library.new

test_and_design = Book.new( "TDD", "John Stan", "123454", 247, 69.9, :tests )
responsive_web_design = Book.new( "Responsive Design", "Anna Lee", "452565", 189, 69.9, :web_design )
jsf_and_jpa = Book.new( "JSF and JPA", "Andy McKee", "543465", 234, :frameworks_mvc )

library.add test_and_design
library.add responsive_web_design
library.add jsf_and_jpa

puts library.books_by_category :tests
