class CreateSells < ActiveRecord::Migration[5.0]
  def change
    create_table :sells do |t|
      t.string :phone
      t.string :time
      t.string :location
      t.string :category
      t.string :weight
      t.string :price
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
