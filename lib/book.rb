# coding utf-8
class Book < Media

  attr_reader :category, :isbn, :author

  include CurrencyFormatter

  def initialize( title, author, isbn = '1', number_of_pages, value, category )
    @title = title
    @author = author
    @isbn = isbn
    @number_of_pages = number_of_pages
    @category = category
    @value = value
    @discount = 0.15
  end

  def to_s
    "Author: #{@author}, ISBN: #{@isbn}, Pages: #{@number_of_pages}, Category: #{@category}"
  end

  def eql?(other_book)
    @isbn == other_book.isbn
  end

  def hash
    @isbn.hash
  end

end
