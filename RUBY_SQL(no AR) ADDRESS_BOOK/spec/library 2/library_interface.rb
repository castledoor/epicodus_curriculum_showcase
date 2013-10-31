require 'pg'
require './lib/book'
require './lib/genre'
require 'pry'


DB = PG.connect(:dbname => 'library')

def main_menu
  puts "Press 'a' if you would like the enter a book into the library database"
  puts "Press 's' if you would like to search the library database"
  puts "Press 'x' to exit database"
  main_menu_input = gets.chomp
  case main_menu_input
  when 'a'
    add_book
  else 
    puts "invalid entry"
  end
end  

def add_book
  puts "enter book title"
  title = gets.chomp
  puts "enter author ID"
  author_id = gets.chomp
  puts "enter genre ID if genre is NOT already in database press 'g' to add a new genre"
  genre_id = gets.chomp
  if genre_id == 'g'
    puts "enter new genre" 
    new_genre_input = gets.chomp
    new_genre = Genre.new(new_genre_input)
    new_genre.save
    genre_id = new_genre.id
    puts "new genre added"
  end
  book = Book.new({'title' => title, 'author_id' => author_id.to_i, 'genre_id' => genre_id.to_i})
  book.save
end
main_menu


# def assign_genre_id 












