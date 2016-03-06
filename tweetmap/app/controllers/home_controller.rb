class HomeController < ApplicationController
  def index
  end

  def fetch_friend_data
  	client = Twitter::REST::Client.new do |config|
  		config.consumer_key = "Qm9XjYDak8E6C7hLxNqle30jg"
        config.consumer_secret= "UJNbc9rbWU4XnMirZuaJoDfCRvnGFOrWYBdeLr9Xc6WLVYqwTP"
        config.access_token= "#{current_user.oauth_token}"
        config.access_token_secret = "#{current_user.oauth_secret}"
    end

    @friends = client.friends.take(10)
    @friends.each do |f|
      location = f.location
      location_value = Geocoder.coordinates("#{location}")
      Friend.get_friend_data(f, location_value, current_user.id)
    end

  end
end
