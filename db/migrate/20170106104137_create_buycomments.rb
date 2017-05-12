class CreateBuycomments < ActiveRecord::Migration[5.0]
  def change
    create_table :buycomments do |t|
      t.text :content
      t.integer :buy_id
      t.integer :user_id

      t.timestamps
    end
  end
end
