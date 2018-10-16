class RemoveColumFromactlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :actlogs, :category_id, :integer
    remove_column :actlogs, :time, :time
  end
end
