json.extract! series, :id, :name, :year, :genre, :status, :img, :created_at, :updated_at
json.url series_url(series, format: :json)
