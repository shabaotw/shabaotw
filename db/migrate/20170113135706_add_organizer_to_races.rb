class AddOrganizerToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :organizer, :text
  end
end
