class CreateActlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :actlogs do |t|
      t.string :date
      t.string :category
      t.integer :time

      t.timestamps
    end
  end
end
