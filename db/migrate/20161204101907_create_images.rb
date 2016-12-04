class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :public_id
      t.timestamps true
    end
  end
end
