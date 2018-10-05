class AddTimeToActlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :actlogs, :time, :integer
  end
end
