json.array!(@concerts) do |concert|
  json.extract! concert, :name, :local_id, :band_id, :date, :begin_time, :end_time, :status
  json.url concert_url(concert, format: :json)
end