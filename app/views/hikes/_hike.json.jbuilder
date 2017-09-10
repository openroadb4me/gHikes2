json.extract! hike, :id, :title, :distance, :difficulty, :region, :description, :image, :link, :completed, :created_at, :updated_at
json.url hike_url(hike, format: :json)
