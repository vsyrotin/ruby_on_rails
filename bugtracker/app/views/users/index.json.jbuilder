json.array!(@users) do |user|
  json.extract! user, :id, :login, :passwg
  json.url user_url(user, format: :json)
end
