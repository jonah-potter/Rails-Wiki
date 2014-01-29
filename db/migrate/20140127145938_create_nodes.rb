class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title
      t.string :author
      t.string :date

      t.timestamps
    end
  end
end
