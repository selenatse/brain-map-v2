json.extract! student, :id, :user_id, :name, :year, :degree, :created_at, :updated_at
json.url student_url(student, format: :json)
