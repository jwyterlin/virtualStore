#coding utf-8
require "FileUtils"

module ActiveFile

  def save

    @new_record = false

    File.open("db/magazines/#{@id}.yml", "w") do |file|
      file.puts serialize
    end
  end

  def destroy
    unless @destroyed or @new_record
      @destroyed = true
      FileUtils.rm "db/magazines/#{@id}.yml"
    end
  end

  module ClassMethods

    def find(id)
      raise DocumentNotFound, "File db/magazines/#{id}.yml not found.", caller unless File.exists?("db/magazines/#{id}.yml")
        YAML.load File.open("db/magazines/#{id}.yml", "r")
    end

    def next_id
      Dir.glob("db/magazines/*.yml").size + 1
    end

    def field(name)

      @fields ||= []
      @fields << name

      get = %Q{
        def #{name}
          @#{name}
        end
      }

      set = %Q{
        def #{name}=(value)
          @#{name}=value
        end
      }

      self.class_eval get
      self.class_eval set

    end

  end

  def self.included(base)
    base.extend ClassMethods
  end

  def serialize
    YAML.dump self
  end

end
