json.array!(@styles) do |style|
  json.extract! style, :name
  json.url style_url(style, format: :json)
end