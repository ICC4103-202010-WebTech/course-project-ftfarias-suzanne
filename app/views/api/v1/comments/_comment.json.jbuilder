json.extract! comment, :id, :message, :created_at
json.url api_v1_comment_url(comment, format: :json)
