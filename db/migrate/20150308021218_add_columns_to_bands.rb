class AddColumnsToBands < ActiveRecord::Migration
  def change
  	add_column :bands, :user_id, :integer
  	add_column :bands, :band_name, :string
  	add_column :bands, :genre, :string
  	add_column :bands, :description, :text
  end
end
