json.extract! teacher_profile, :id, :name, :email, :experience, :subject, :mode_to_teach, :created_at, :updated_at
json.url teacher_profile_url(teacher_profile, format: :json)
