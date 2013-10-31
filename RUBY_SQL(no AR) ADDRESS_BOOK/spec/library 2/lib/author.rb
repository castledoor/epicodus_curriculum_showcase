require 'pg'

class Author

  attr_reader :name, :id
  def initialize(name)
  end
  def self.all
    results = DB.exec("SELECT * FROM author;")
    authors = []
    results.each do |result|
      name = result['author']
      authors << Author.new(name)
    end
    authors
  end

  def save
    results = DB.exec("INSERT INTO author (author) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

   def ==(another_author)
    self.name == another_author.name
  end
end