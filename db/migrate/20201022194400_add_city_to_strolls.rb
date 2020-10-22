class AddCityToStrolls < ActiveRecord::Migration[5.2]
  def change
     add_reference :strolls, :city, foreign_key: true
  end
end
