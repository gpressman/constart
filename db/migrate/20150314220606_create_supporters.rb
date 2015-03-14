class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
