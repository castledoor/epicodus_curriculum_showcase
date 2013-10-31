require 'rspec'
require 'book'
require 'genre'
require 'pg'
require 'author'

DB = PG.connect(:dbname => 'library_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM books *;")
    DB.exec("DELETE FROM author *;")
    DB.exec("DELETE FROM genre *;")
  end
end
