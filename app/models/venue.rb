class Venue < ActiveRecord::Base
	belongs_to :user
	has_many :concerts
	has_many :requests
end
