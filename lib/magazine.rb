class Magazine

  attr_reader :title, :id

  def initialize(title, value)
    @title = title
    @value = value
    @id = self.class.next_id
  end

  private

  def self.next_id
    Dir.glob("db/magazines/*.yml").size + 1
  end

end
