class CreateNewscomments < ActiveRecord::Migration[5.0]
  def change
    create_table :newscomments do |t|
      t.text :content
      t.integer :news2_id
      t.integer :user_id

      t.timestamps
    end
  end
end
