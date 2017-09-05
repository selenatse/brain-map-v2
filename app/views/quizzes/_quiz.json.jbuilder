json.extract! quiz, :id, :name, :course_id, :status_type, :number_questions, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
