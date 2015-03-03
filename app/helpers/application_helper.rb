module ApplicationHelper



  def artist_getinfo(artist_name)
    artist_name = URI.escape(artist_name)
    artist_info = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=a6200e95f6ee72b0852822a2df3a4dd9&format=json")
    data = JSON.parse(artist_info.body)
    return data['artist']
  end

 
end


def artist_playtrack(artist_name)
	artist_name =URI.escape(artist_name)
	artist_info= HTTParty.get("https://api.spotify.com/v1/search?type=artist&q=#{artist_name}")
	actual_info= JSON.parse(artist_info.body)
	artist_link= actual_info['artists']['items'][0]['href']
	top_track = HTTParty.get("#{artist_link}/top-tracks?country=us")
	track=JSON.parse(top_track.body)
	track_url= track["tracks"][0]["preview_url"]
	return track_url
end

<li><a href="<%=artist_playtrack(concert.artist)%>"></li>