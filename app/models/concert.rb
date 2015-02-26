class Concert < ActiveRecord::Base
	has_and_belongs_to_many :users
	belongs_to :venue
end
