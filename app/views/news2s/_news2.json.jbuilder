json.extract! news2, :id, :title, :content, :category, :tags, :author, :user_id, :created_at, :updated_at
json.url news2_url(news2, format: :json)