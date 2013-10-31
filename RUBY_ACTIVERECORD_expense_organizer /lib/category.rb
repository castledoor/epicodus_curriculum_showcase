class Category < ActiveRecord::Base

  has_many :expenses  
  def percentage
    self.expenses.sum(:amount).to_f / Expense.total 
  end
end