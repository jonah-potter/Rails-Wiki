class CreateCategoriesTable < ActiveRecord::Migration
  def up
    create_table :categories, :force => true do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :categories
  end
end