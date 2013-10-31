class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.column :description, :string
      t.column :amount, :decimal
      t.column :date, :datetime
    end
  end
end
