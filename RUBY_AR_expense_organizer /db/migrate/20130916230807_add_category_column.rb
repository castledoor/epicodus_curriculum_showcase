class AddCategoryColumn < ActiveRecord::Migration
  def change
    change_table :expenses do |t|
    t.integer :category_id
    end
  end
end
