class Concert < ActiveRecord::Base
	has_and_belongs_to_many :users
	belongs_to :venue
	has_one :request

	scope :in_progress, -> {where(status: "in_progress")}
	scope :funded, -> {where(status: "funded")}
	scope :failed, -> {where(failed: "funded")}
	
end
