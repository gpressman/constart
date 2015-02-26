class CreateConcertsAndUsers < ActiveRecord::Migration
  def change
    create_table :concerts_and_users do |t|
    	t.belongs_to :users, index: true
    	t.belongs_to :concerts, index: true
    end
  end
end
