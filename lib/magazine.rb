class Magazine

  attr_reader :title, :id
  attr_accessor :value

  def initialize(title, value)
    @title = title
    @value = value
    @id = self.class.next_id
  end

  def save
    File.open("db/magazines/#{@id}.yml","w") do |file|
      file.puts serialize
    end
  end

  def self.find(id)
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
