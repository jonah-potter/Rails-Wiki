class AddTableToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :table, :text
  end
end
