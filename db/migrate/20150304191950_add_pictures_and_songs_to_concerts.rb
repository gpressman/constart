class AddPicturesAndSongsToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :picture, :string
  	add_column :concerts, :song, :string
  end
end
