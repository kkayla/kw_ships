json.array!(@boats) do |boat|
  json.extract! boat, :id, :name, :max_container, :boat_location
  json.url boat_url(boat, format: :json)
end
