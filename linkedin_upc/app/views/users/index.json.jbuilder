json.array!(@users) do |user|
  json.extract! user, :user_type_id, :name, :last_name, :surname, :gender, :doc_type_id, :doc_number, :user_name, :mail, :password
  json.url user_url(user, format: :json)
end