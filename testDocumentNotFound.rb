require File.expand_path("lib/virtual_store")

begin
  Magazine.find 42
rescue DocumentNotFound => error
  p error
end
