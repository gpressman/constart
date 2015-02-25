class AddColumnToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :description, :text
  end
end
