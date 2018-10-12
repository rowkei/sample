class Actlog < ActiveRecord::Migration[5.2]
  def change
    add_column :actlogs, :category_id, :integer
  end
end
