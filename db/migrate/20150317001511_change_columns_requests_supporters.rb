class ChangeColumnsRequestsSupporters < ActiveRecord::Migration
  def change
  	rename_column :requests_supporters, :request_id, :requests_id
  	rename_column :requests_supporters, :supporter_id, :supporters_id
  end
end
