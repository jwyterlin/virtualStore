class Media

  attr_accessor :value
  attr_reader :title

  def initialize
    @discount = 0.1
    @value = 10.0
  end

  def value_with_discount
    @value - (@value * @discount)
  end

end
