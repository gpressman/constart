class Request < ActiveRecord::Base
	belongs_to :venue
	belongs_to :user
    belongs_to :concert
    belongs_to :band
	
	scope :sent, -> {where(status: "sent")}
	scope :replied, -> { where(status: "replied_to") }
	scope :accepted, -> {where(status: "accepted")}
	scope :declined, -> {where(status: "declined")}
	
    def artist_getimage()
        artist_name = URI.escape(artist)
        artist_info = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=a6200e95f6ee72b0852822a2df3a4dd9&format=json")
        data = JSON.parse(artist_info.body)
        self.picture =  data['artist']['image'][4]['#text']
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

