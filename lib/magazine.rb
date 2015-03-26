class Magazine

  attr_reader :title

  @id = 0

  def initialize(title)
    @title = title
  end

  def self.id
    @id += 1
  end

end
