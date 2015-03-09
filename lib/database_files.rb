require 'yaml'

class DatabaseFiles

  def save(book)
    File.open("books.yml", "a") do |file|
      file.puts YAML.dump(book)
      file.puts ""
    end
  end

  def load
    $/ = "\n\n"
    File.open("books.yml","r").map do |book_serialized|
      YAML.load book_serialized
    end
  end

end
