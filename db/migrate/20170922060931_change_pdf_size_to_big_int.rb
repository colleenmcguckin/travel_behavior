class ChangePdfSizeToBigInt < ActiveRecord::Migration
  def change
    change_column :documents, :pdf_size, :int8, limit: 8
  end
end
