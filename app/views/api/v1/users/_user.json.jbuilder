json.(user, :id, :name, :last_name, :email)
json.token user.generate_jwt
