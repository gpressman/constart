class AddConcertidToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :concert_id, :integer
  end
end
