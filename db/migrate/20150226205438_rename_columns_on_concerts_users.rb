class RenameColumnsOnConcertsUsers < ActiveRecord::Migration
  def change
  	rename_column :concerts_users, :users_id, :user_id
  	rename_column :concerts_users, :concerts_id, :concert_id
  end
end
