require 'pg'


class Book
  attr_reader :title, :author_id, :genre_id

  def initialize(attributes)
    @title = attributes['title']
    @author_id = attributes['author_id']
    @genre_id = attributes['genre_id']
  end

  def self.all
    results = DB.exec("SELECT * FROM books;")
    books = []
    results.each do |result|
      title = result['title']
      author_id = result['author_id']
      genre_id = result['genre_id']

      books << Book.new({'title' => title, 'author_id' => author_id.to_i, 'genre_id' => genre_id.to_i})
    end
    books
  end

  def save
    results = DB.exec("INSERT INTO books (title, author_id, genre_id) VALUES ('#{@title}', #{@author_id}, #{@genre_id});")

  end
  def ==(another_book)
    self.title == another_book.title
  end
end