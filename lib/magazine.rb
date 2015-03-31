#coding utf-8
require "FileUtils"

class Magazine

  attr_reader :title, :id, :destroyed, :new_record
  attr_accessor :value

  def initialize(title, value)
    @title = title
    @value = value
    @id = self.class.next_id
    @destroyed = false
    @new_record = true
  end

  def save
    File.open("db/magazines/#{@id}.yml","w") do |file|
      file.puts serialize
    end
  end

  def destroy
    unless @destroyed or @new_record
      @destroyed = true
      FileUtils.rm "db/magazines/#{@id}.yml"
    end
  end

  def self.find(id)
    raise DocumentNotFound, "File db/magazines/#{id} not found.", caller unless File.exists?("db/magazines/#{id}.yml")
      YAML.load File.open("db/magazines/#{id}.yml", "r")
  end

  private

  def serialize
    YAML.dump self
  end

  def self.next_id
    Dir.glob("db/magazines/*.yml").size + 1
  end

end
