class ChangeNameOfConcertsAndUsers < ActiveRecord::Migration
  def change
  	rename_table(:concerts_and_users, :concerts_users)
  end
end
