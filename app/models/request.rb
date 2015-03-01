class Request < ActiveRecord::Base
	belongs_to :venue
	belongs_to :user
    belongs_to :concert
	
	scope :sent, -> {where(status: "sent")}
	scope :replied, -> { where(status: "replied_to") }
	scope :accepted, -> {where(status: "accepted")}
	scope :declined, -> {where(status: "declined")}
	
	
	def to_concert_hash
      return {
        artist: artist,
        date: date,
        ticket_price: ticket_price,
        tickets_required: tickets_required,
        date_campaign_ends: date_campaign_ends,
        city: city,
        description: description,
        time: time,
        venue_id: venue_id,
        user_id: user_id
    }
    
   end
end

