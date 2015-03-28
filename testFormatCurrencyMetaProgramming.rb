require File.expand_path("lib/virtual_store")

windows = DVD.new "Windows 7 for Dummies", 98.9, :operatin_systems

p windows.formatted_value

p windows.formatted_value_with_discount
