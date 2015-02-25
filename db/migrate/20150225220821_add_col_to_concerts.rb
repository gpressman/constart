class AddColToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :city, :string
  end
end
