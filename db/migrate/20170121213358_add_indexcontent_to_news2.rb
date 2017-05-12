class AddIndexcontentToNews2 < ActiveRecord::Migration[5.0]
  def change
    add_column :news2s, :indexcontent, :text
  end
end
