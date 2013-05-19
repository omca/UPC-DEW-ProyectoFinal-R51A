json.array!(@assistances) do |assistance|
  json.extract! assistance, :concert_id, :user_id, :assistance_flag, :score
  json.url assistance_url(assistance, format: :json)
end