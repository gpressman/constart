class AddPicturesAndSongsToRequests < ActiveRecord::Migration
  def change
  	add_column :requests, :picture, :string
  	add_column :requests, :song, :string
  end
end
