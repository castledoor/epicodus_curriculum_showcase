require 'pg'

class Genre
  attr_reader :type, :id
  def initialize(type)
    @type = type
  end

    def self.all
    results = DB.exec("SELECT * FROM genre;")
    genres = []
    results.each do |result|
      type = result['genre']
      genres << Genre.new(type)
    end
    genres
  end

  def save
    results = DB.exec("INSERT INTO genre (genre) VALUES ('#{@type}') RETURNING id;")
    @id = results.first['id'].to_i
  end

   def ==(another_genre)
    self.type == another_genre.type
  end
end