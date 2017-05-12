class CreatePost2comments < ActiveRecord::Migration[5.0]
  def change
    create_table :post2comments do |t|
      t.text :content

      t.timestamps
    end
  end
end
