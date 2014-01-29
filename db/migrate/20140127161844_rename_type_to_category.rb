class RenameTypeToCategory < ActiveRecord::Migration
  def change
    rename_column :nodes, :type, :category
  end
end