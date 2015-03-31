#coding: utf-8
class DVD < Media

  attr_reader :title

  extend CurrencyFormatter

  format_currency :value_with_discount, :value

  def initialize( title, value, category )
    super()
    @title = title
    @value = value
    @category = category
  end

  def to_s
    %Q{ Title: #{@title}, Value: #{@value} }
  end

end
