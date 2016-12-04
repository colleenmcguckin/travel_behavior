class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :position
      t.text :content
      t.string :slug
      t.timestamps
    end
  end
end
