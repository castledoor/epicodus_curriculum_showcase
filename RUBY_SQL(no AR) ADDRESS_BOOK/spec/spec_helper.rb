require 'rspec'
require 'pg'
require 'book'
require 'contacts'
require 'pry'

DB = PG.connect(:dbname => 'address_book_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM contacts *;")
    DB.exec("DELETE FROM phones *;")
    DB.exec("DELETE FROM emails *;")
    DB.exec("DELETE FROM addresses *;")
  end
end
