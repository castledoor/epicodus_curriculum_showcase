require 'active_record'
require './lib/expense'
require './lib/category'
require 'pry'

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuation = database_configurations["development"]
ActiveRecord::Base.establish_connection(development_configuation)

def welcome
  puts "Welcome to your expenses"
  menu
end

def menu
  puts "press 'a' to add an expense"
  puts "press 'l' to list all your expenses"
  puts "press 'x' to exit"
  puts "press 'p' to see a category breakdown of your
   spending"
  puts "press 't' to search your expenses by date"
  choice = gets.chomp
  case choice 
  when 'a'
    add_expense
    menu
  when 'l'
    list
    menu
  when 'p'
    category_breakdown
  when 't'
    date_filter
  when 'x'
    puts "Goodbye"
  else 
    puts "Sorry that wasnt a valid option"
    menu
  end
end


def add_expense
  puts "what did you buy?"
  expense_name = gets.chomp
  puts "how much was it?"
  expense_amount = gets.chomp.to_f
  puts "when did you make this purchase?"
  expense_date = gets.chomp
  puts "what category is this purchase in?"
  category_input = gets.chomp.downcase
  category_id = Category.find_or_create_by(description: category_input).id
  expense = Expense.new(:description => expense_name, :amount => expense_amount, :date => expense_date, :category_id => category_id)
  expense.save
  "'#{expense_name}' has been added to your Expense Organizer. its category id is #{category_id}"
end

def list
  puts "\nHere are all your expenses"
  expenses = Expense.all
  expenses.each {|expense| puts expense.description}
end

def date_filter
  puts "please enter a date range to search through"
  start_search = gets.chomp
  end_search = gets.chomp
  Expense.select_by_date(start_search, end_search).each do |search_info|
      puts search_info.description
      puts search_info.amount
      puts search_info.date
  end
end

def category_breakdown
  Category.all.each do |category|
    puts category.description 
    puts category.percentage.round(2) * 100
  end
  menu
end
welcome
