class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :content
      t.string :link
      t.string :link_text
      t.timestamps
    end
  end
end
