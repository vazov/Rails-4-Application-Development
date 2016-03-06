class MapDisplayController < ApplicationController
  include MapDisplayHelper
  def index
   @friends = Friend.all.to_a
   @hash = Gmaps4rails.build_markers(@friends) do |user, marker|
   	  if ( !user.latitude.nil? and !(user.latitude == 0.0))
       marker.lat user.latitude
       marker.lng user.longitude
       marker.infowindow user.name
      end
   end
   @hash.delete_if { |k| k == {} }
  end
end
