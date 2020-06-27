json.extract! event_report, :id, :created_at, :updated_at
json.url event_report_url(event_report, format: :json)
