class Media

  attr_accessor :value
  attr_reader :title

  def value_with_discount
    @value - (@value * @discount)
  end

end
