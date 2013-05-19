json.array!(@bands) do |band|
  json.extract! band, :name, :user_id, :style_id
  json.url band_url(band, format: :json)
end