#coding utf-8
require "FileUtils"

class Magazine

  attr_reader :title, :id, :destroyed, :new_record
  attr_accessor :value

  include ActiveFile

  def initialize(title, value)
    @title = title
    @value = value
    @id = self.class.next_id
    @destroyed = false
    @new_record = true
  end

end
