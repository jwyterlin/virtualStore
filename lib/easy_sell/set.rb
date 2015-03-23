module EasySell

  class Set

    def initialize
      @database_files = DatabaseFiles.new
      @books ||= ::Array.new
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

    private

    def save(book)
      @database_files.save book
      yield
    end

  end

end
