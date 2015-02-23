class AddUserdataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :string
    add_column :users, :address, :text
    add_column :users, :phone_number, :string
  end
end
