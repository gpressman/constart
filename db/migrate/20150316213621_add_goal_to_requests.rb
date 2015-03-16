class AddGoalToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :goal, :integer
  end
end
