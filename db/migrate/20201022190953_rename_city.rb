class RenameCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :name
  end
end
