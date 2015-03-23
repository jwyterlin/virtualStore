require File.expand_path("lib/virtual_store")

library = Library.new

world_j = Magazine.new "WorldJ"

library.add world_j

library.each do |any_object|
  p any_object.title
end
