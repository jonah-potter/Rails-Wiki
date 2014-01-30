class ChangeTextFromStringToText < ActiveRecord::Migration
  def up
    change_column :nodes, :maintext, :text
  end

  def down
    change_column :nodes, :maintext, :string
  end
end
