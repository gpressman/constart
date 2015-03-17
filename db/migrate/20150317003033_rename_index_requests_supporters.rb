class RenameIndexRequestsSupporters < ActiveRecord::Migration
  def change
  	rename_column :requests_supporters, "requests_id", "request_id"
  	rename_column :requests_supporters, "supporters_id", "supporter_id"
  end
end
