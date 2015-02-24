class AddColumnToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :city, :string
  end
end
