class CreateNews2s < ActiveRecord::Migration[5.0]
  def change
    create_table :news2s do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :tags
      t.string :author
      t.integer :user_id

      t.timestamps
    end
  end
end
