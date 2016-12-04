class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text     :content
      t.string   :category
      t.date     :publication_date
      t.string   :title
      t.string   :pdf_id
      t.string   :pdf_filename
      t.integer  :pdf_size
      t.string   :pdf_content_type
      t.timestamps
    end
  end
end
