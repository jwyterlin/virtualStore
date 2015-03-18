require File.expand_path("lib/virtual_store")

test_and_design = Book.new( "TDD", "John Stan", "123454", 247, 69.9, :tests )

p test_and_design.value
p test_and_design.title

windows = DVD.new( "Windows 7 for Dummies", 98.9, :operating_systems )

p windows.value
p windows.title
