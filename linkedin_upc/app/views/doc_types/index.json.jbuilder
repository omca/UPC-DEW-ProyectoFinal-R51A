json.array!(@doc_types) do |doc_type|
  json.extract! doc_type, :name
  json.url doc_type_url(doc_type, format: :json)
end