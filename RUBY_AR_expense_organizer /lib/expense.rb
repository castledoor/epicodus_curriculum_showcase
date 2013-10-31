require 'pry'
class Expense < ActiveRecord::Base

  belongs_to :category
  def self.total
   big_decimal = sum(:amount)
  end 

  def self.select_by_date(begin_lookup, end_lookup)
    self.where("date BETWEEN ? AND ?", begin_lookup, end_lookup)
  end
end