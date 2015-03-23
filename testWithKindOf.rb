require File.expand_path("lib/virtual_store")

library = Library.new

windows = DVD.new "Windows 7 for Dummies", 98.9, :operating_systems

library.add windows

world_j = Magazine.new "World J"

library.add world_j

library.each do |media|
  p media.title
end
