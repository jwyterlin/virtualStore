require File.expand_path("lib/virtual_store")

magazine = Magazine.new
p magazine.new_record
p magazine.id

magazine.title = "Mac+"
magazine.value = 10.90
magazine.save
