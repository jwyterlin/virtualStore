require File.expand_path("lib/virtual_store")

magazine = Magazine.new title: "Mac+", value: 10.90

p magazine.title
p magazine.value

magazine.save
