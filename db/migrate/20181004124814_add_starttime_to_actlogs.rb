class AddStarttimeToActlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :actlogs, :starttime, :time
  end
end
