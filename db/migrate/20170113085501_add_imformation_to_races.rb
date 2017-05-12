class AddImformationToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :imformation, :text
  end
end
