json.extract! gym, :id, :gym_name, :address, :open_time, :close_time, :gym_manager, :created_at, :updated_at
json.url gym_url(gym, format: :json)
