class AddHeadingPositionToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :heading_position, :integer
  end
end
