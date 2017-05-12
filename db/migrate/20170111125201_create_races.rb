class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :date
      t.string :title
      t.string :location
      t.string :people
      t.string :price
      t.string :racepeople
      t.string :money
      t.integer :user_id

      t.timestamps
    end
  end
end
