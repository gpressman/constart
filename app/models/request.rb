class Request < ActiveRecord::Base
	belongs_to :venue
	belongs_to :user

	scope :replied, -> { where(status: "replied_to") }
	scope :sent, -> {where(status: "sent")}
	scope :accepted, -> {where(status: "accepted")}
	scope :declined, -> {where(status: "declined")}
end
