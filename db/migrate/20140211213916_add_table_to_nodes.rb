class AddTableToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :table, :array
  end
end
