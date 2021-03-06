class Request < ActiveRecord::Base
    has_and_belongs_to_many :supporters
	belongs_to :venue
	belongs_to :user
    belongs_to :concert
    belongs_to :band
	
	scope :sent, -> {where(status: "sent")}
	scope :funding, -> { where(status: "funding") }
	scope :accepted, -> {where(status: "accepted")}
	scope :declined, -> {where(status: "declined")}
    scope :survey, -> {where(status: "survey")}
    scope :supported, ->{where(status: "supported")}
	
      def artist_getimage()
        artist_name =URI.escape(artist)
        artist_info= HTTParty.get("https://api.spotify.com/v1/search?type=artist&q=#{artist_name}")
        actual_info= JSON.parse(artist_info.body)
        unless actual_info['artists']['items'].empty?
          self.picture = actual_info['artists']['items'][0]['images'][0]['url']   
        end
    end

    def artist_getsong()
        artist_name =URI.escape(artist)
        artist_info= HTTParty.get("https://api.spotify.com/v1/search?type=artist&q=#{artist_name}")
        actual_info= JSON.parse(artist_info.body)

        unless actual_info['artists']['items'].empty?
            artist_link= actual_info['artists']['items'][0]['href']
            top_track = HTTParty.get("#{artist_link}/top-tracks?country=us")
            track=JSON.parse(top_track.body)
            track_url= track["tracks"][0]["preview_url"]
            self.song = track_url
        end
    end

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
        picture: picture,
        song: song,
        venue_id: venue_id,
        user_id: user_id
    }
    
   end
end

