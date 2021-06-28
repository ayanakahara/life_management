class AddCategoryIdToContents < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :category_id, :bigint, null: true
  end
end
