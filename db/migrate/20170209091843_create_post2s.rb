class CreatePost2s < ActiveRecord::Migration[5.0]
  def change
    create_table :post2s do |t|
      t.text :image
      t.string :indexcontent
      t.string :title
      t.text :content
      t.string :category
      t.string :tags
      t.string :author

      t.timestamps
    end
  end
end
