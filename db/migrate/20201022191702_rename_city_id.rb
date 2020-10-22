class RenameCityId < ActiveRecord::Migration[5.2]
  def change
        rename_column :cities, :city_name_id, :city_name
  end
end
