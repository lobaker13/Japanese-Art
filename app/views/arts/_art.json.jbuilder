json.extract! art, :id, :name, :completed_at, :user_id, :artist_id, :created_at, :updated_at
json.url art_url(art, format: :json)
