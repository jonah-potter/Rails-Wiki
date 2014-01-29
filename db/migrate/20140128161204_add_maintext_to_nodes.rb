class AddMaintextToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :maintext, :string
  end
end
