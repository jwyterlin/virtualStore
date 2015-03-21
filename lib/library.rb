class Library

  include Enumerable

  def initialize
    @database_files = DatabaseFiles.new
    @books ||= []
  end

  def add(book)
    save book do
      @books << book
    end
  end

  def books_by_category(category)
    @books.select { |book| book.category == category }
  end

  def books
    @books = @database_files.load
  end

  def each
    books.each { |book| yield book }
  end

  private

  def save(book)
    @database_files.save book
    yield
  end

end
