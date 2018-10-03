json.extract! actlog, :id, :date, :category, :time, :created_at, :updated_at
json.url actlog_url(actlog, format: :json)
