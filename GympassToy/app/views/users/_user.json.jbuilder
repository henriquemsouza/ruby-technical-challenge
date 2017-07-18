json.extract! user, :id, :email, :password, :full_name, :home_address, :work_address, :job, :created_at, :updated_at
json.url user_url(user, format: :json)
