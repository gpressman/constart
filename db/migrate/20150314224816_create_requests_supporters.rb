class CreateRequestsSupporters < ActiveRecord::Migration
  def change
    create_table :requests_supporters do |t|
    	t.belongs_to :requests, index: true
    	t.belongs_to :supporters, index: true
    end
  end
end
