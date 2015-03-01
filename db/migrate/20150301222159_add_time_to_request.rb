class AddTimeToRequest < ActiveRecord::Migration
  def change
  	add_column :requests, :time, :time
  end
end
