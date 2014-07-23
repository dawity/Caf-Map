json.array!(@cafe_locs) do |cafe_loc|
  json.extract! cafe_loc, :id, :latitude, :longitude, :address, :description, :title
  json.url cafe_loc_url(cafe_loc, format: :json)
end
