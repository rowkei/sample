class RemoveCategoryFromactlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :actlogs, :category, :string
  end
end
