json.extract! lease, :id, :price, :lease_start_date, :lease_end_date, :art_id, :client_id, :user_id, :lease_id, :created_at, :updated_at
json.url lease_url(lease, format: :json)
