class AddStatusToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :status, :string
  end
end
