json.extract! teacher, :id, :name, :email, :description, :phone, :qualification, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
