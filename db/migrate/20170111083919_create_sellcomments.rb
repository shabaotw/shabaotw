class CreateSellcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :sellcomments do |t|
      t.text :content
      t.integer :user_id
      t.integer :sell_id

      t.timestamps
    end
  end
end
