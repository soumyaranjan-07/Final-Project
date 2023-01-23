json.extract! course, :id, :name, :description, :price, :duration, :created_at, :updated_at
json.url course_url(course, format: :json)
