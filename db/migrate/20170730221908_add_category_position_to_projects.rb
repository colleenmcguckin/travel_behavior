class AddCategoryPositionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :category_position, :integer
  end
end
