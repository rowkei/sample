class RenumbercolumOfactlogs < ActiveRecord::Migration[5.2]
  def change
    change_table :actlogs do |t|
      t.change :time, :time, after: :date
      t.change :category_id, :integer, after: :date
    end
    
  end
end
