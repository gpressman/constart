class AddColumnToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :city, :string
  end
end
