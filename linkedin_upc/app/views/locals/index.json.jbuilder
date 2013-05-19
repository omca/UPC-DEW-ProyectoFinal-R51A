json.array!(@locals) do |local|
  json.extract! local, :name, :address, :district_id, :maps_x, :maps_y, :phone
  json.url local_url(local, format: :json)
end