class EditColumnsTableBandsUsers < ActiveRecord::Migration
  def change
  	rename_column :bands_users, :users_id, :user_id
  	rename_column :bands_users, :bands_id, :band_id
  end
end
