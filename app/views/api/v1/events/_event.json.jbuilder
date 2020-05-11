json.extract! event, :id, :name, :description, :created_at
json.url api_v1_event_url(event, format: :json)
