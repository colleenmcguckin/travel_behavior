class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text   :description
      t.string :category
      t.date   :publication_date
      t.string :link
      t.string :link_text
      t.timestamps
    end
  end
end
