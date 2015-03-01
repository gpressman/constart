module ApplicationHelper



  def artist_getinfo(artist_name)
    artist_name = URI.escape(artist_name)
    artist_info = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=a6200e95f6ee72b0852822a2df3a4dd9&format=json")
    data = JSON.parse(artist_info.body)
    return data['artist']
  end

 
end


