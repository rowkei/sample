class RemoveTimeFromActlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :actlogs, :time, :time
  end
end
