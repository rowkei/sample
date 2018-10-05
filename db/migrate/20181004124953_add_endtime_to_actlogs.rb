class AddEndtimeToActlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :actlogs, :endtime, :time
  end
end
