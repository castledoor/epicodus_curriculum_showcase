require 'spec_helper'

describe Category do
  it { should have_many :expenses }

  it "calculates what percentage of the total of all expenses it represents" do
    category1 = Category.new(:description => "food")
    category2 = Category.new(:description => "clothes")
    category1.save
    category2.save
    category_id1 = category1.id
    category_id2 = category2.id
    expense1 = Expense.new(:description => "grapes", :amount => 600, :date => "02/23/2013", :category_id => category_id1)
    expense2 = Expense.new(:description => "levis", :amount => 400, :date => "02/23/2013", :category_id => category_id2)
    expense1.save
    expense2.save
    expense_total = Expense.total
    category1.percentage.should eq 0.6
  end
end

