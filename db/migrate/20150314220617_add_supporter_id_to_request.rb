class AddSupporterIdToRequest < ActiveRecord::Migration
  def change
  	add_column :requests, :supporter_id, :integer
  end
end
