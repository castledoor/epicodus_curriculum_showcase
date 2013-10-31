require 'spec_helper'

describe Expense do
  it "totals the values of all expenses" do
    expense1 = Expense.new(:description => "food", :amount => 12, :date => "02/23/2013", :category_id => 1)
    expense1.save

    expense2 = Expense.new(:description => "clothes", :amount => 56, :date => "03/23/2013", :category_id => 2)
    expense2.save
  Expense.total.should eq BigDecimal.new(68)
  end

  it "pulls out expenses between certain time periods" do
    expense1 = Expense.new(:description => "grapes", :amount => 6, :date => "2013-01-20" , :category_id => 1)
    expense2 = Expense.new(:description => "olives", :amount => 4, :date => "2013-06-20" , :category_id => 1)
    expense3 = Expense.new(:description => "levis", :amount => 100, :date => "2013-07-20" , :category_id => 2)
    expense4 = Expense.new(:description => "plants", :amount => 320, :date => "2013-12-20" , :category_id => 5)
    expense1.save
    expense2.save
    expense3.save
    expense4.save
    Expense.select_by_date("2013-02-01", "2013-08-01").should eq [expense2, expense3]
  end
end