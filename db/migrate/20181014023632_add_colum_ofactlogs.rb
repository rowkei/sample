class AddColumOfactlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :actlogs, :time, :integer, after: :date
    add_column :actlogs, :category_id, :integer, after: :time
  end
end
