class AddImageToNews2s < ActiveRecord::Migration[5.0]
  def change
    add_column :news2s, :Image, :string
  end
end
