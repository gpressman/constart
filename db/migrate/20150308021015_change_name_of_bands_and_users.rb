class ChangeNameOfBandsAndUsers < ActiveRecord::Migration
  def change
  	rename_table(:bands_and_users, :bands_users)
  end
end
