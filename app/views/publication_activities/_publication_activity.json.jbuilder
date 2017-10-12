json.extract! publication_activity, :id, :publication_id, :activity_type_id, :date, :time, :created_at, :updated_at
json.url publication_activity_url(publication_activity, format: :json)
