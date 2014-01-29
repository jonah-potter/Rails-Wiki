class AddCategoryIdToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :category_id, :integer
    remove_column :nodes, :category
  end
end
