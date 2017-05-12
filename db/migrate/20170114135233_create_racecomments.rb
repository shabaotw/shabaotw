class CreateRacecomments < ActiveRecord::Migration[5.0]
  def change
    create_table :racecomments do |t|
      t.text :content
      t.integer :user_id
      t.integer :race_id

      t.timestamps
    end
  end
end
