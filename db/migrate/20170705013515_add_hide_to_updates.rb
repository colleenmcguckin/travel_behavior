class AddHideToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :hide, :boolean, default: false
  end
end
