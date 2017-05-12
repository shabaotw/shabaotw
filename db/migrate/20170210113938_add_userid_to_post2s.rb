class AddUseridToPost2s < ActiveRecord::Migration[5.0]
  def change
    add_column :post2s, :user_id, :integer
  end
end
