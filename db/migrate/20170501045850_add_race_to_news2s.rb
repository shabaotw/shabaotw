class AddRaceToNews2s < ActiveRecord::Migration[5.0]
  def change
    add_column :news2s, :racelocation, :string
    add_column :news2s, :peopel, :string
    add_column :news2s, :month, :string
    add_column :news2s, :date, :string
    add_column :news2s, :weekdate, :string
    add_column :news2s, :money, :string
  end
end
