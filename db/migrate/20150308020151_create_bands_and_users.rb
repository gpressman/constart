class CreateBandsAndUsers < ActiveRecord::Migration
  def change
    create_table :bands_and_users do |t|
    	t.belongs_to :users, index: true
    	t.belongs_to :bands, index: true
    end
  end
end
