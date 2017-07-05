class RemoveLinkTextFromUpdates < ActiveRecord::Migration
  def change
    remove_column :updates, :link_text
  end
end
