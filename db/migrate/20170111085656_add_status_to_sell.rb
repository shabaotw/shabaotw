class AddStatusToSell < ActiveRecord::Migration[5.0]
  def change
    add_column :sells, :status, :string
  end
end
