class Report

  def initialize(library)
    @library = library
  end

  def total
    @library.books.inject(0) { |tot, book| tot += book.value }
  end

  def titles
    @library.books.map &:title
  end

end
