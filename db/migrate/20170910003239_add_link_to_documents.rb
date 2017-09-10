class AddLinkToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :link_url, :string
  end
end
