#coding: utf-8
class DVD < Media

  include CurrencyFormatter

  attr_reader :title

  def self.format_currency(*variables_and_methods)

    variables_and_methods.each do |name|
      define_method("formatted_#{name}") do
        value = respond_to?(name) ? send(name) : instance_variable_get("@#{name}")
        "R$ #{value}"
      end
    end

  end

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
