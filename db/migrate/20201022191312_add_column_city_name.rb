class AddColumnCityName < ActiveRecord::Migration[5.2]
  def change
    add_reference :cities, :city_name, :string
  end
end
