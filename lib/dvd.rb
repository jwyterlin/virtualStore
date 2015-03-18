#coding: utf-8
class DVD < Media

  def initialize( title, value, category )
    @title = title
    @value = value
    @category = category
  end

  def to_s
    %Q{ Title: #{@title}, Value: #{@value} }
  end

end
