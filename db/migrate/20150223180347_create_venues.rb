class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :manager_name
      t.string :phone_number
      t.text :address
      t.string :email
      t.integer :capacity
      t.boolean :adult
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
