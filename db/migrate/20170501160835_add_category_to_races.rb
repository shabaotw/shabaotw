class AddCategoryToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :category, :string
    add_column :races, :month, :string
    add_column :races, :weekdate, :string
  end
end
