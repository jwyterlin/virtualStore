require File.expand_path("lib/virtual_store")

world_j = Magazine.new "World J", 10.9
world_j.save

world_j.value = 12.9
world_j.save
