class AddDataToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :artist, :string
    add_column :concerts, :venue_id, :integer
    add_column :concerts, :date, :date
    add_column :concerts, :ticket_price, :string
    add_column :concerts, :tickets_required, :integer
    add_column :concerts, :date_campaign_ends, :date
    add_column :concerts, :user_id, :integer
  end
end
