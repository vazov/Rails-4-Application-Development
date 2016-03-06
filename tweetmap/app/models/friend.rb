class Friend < ActiveRecord::Base
	geocoded_by :location
	def self.get_friend_data(friend,location_value,user_id)
		if location_value.nil?
			location_value = [0,0]
		end
		self.where(
			name: friend.name,
			screen_name: friend.screen_name,
			location: friend.location,
			latitude: location_value.first,
			longitude: location_value.second,
			user_id: user_id).first_or_create
    end
end
