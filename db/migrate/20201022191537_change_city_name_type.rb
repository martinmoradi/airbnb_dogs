class ChangeCityNameType < ActiveRecord::Migration[5.2]
  def change
    change_column :cities, :city_name_id, :string
  end
end
