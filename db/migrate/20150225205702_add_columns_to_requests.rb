class AddColumnsToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :description, :text
  end
end
