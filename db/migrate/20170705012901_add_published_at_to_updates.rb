class AddPublishedAtToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :published_at, :datetime
  end
end
