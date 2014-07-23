class WelcomeController < ApplicationController
  def index
  	 @cafe_locs = CafeLoc.all
      @hash = Gmaps4rails.build_markers(@cafe_locs) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.title
    end
  end
end
