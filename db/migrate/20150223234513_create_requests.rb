class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
	  t.timestamps null: false
	  t.string :artist
      t.integer :venue_id 
      t.date :date
      t.string :ticket_price
      t.integer :tickets_required
      t.date :date_campaign_ends
 	  t.integer :user_id
      t.string :status 

    end   
     
  end
end


