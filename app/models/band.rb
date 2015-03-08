class Band < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :requests
	has_many :concerts
end
