json.user do 
  json.id current_user.id
  json.email current_user.email
  json.name current_user.name
  json.last_name current_user.last_name
  json.token current_user.generate_jwt
end
