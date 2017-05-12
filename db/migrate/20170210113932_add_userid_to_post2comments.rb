class AddUseridToPost2comments < ActiveRecord::Migration[5.0]
  def change
    add_column :post2comments, :user_id, :integer
    add_column :post2comments, :post2_id, :integer
  end
end
