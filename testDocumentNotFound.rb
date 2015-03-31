require File.expand_path("lib/virtual_store")

begin
  Magazine.find 42
rescue
  p "The object you're looking for was not found"
end
