json.array!(@users) do |user|
  json.extract! user, :id, :first, :last, :username, :password, :groupname
  json.url user_url(user, format: :json)
end
