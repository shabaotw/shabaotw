json.extract! question, :id, :image, :indexcontent, :title, :content, :category, :tags, :author, :created_at, :updated_at
json.url question_url(question, format: :json)