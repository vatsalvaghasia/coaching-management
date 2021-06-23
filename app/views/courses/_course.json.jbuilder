json.extract! course, :id, :c_name, :c_desc, :c_level, :c_structure, :c_mode, :c_location, :c_duration, :c_days, :c_time, :c_age, :c_detailed_structure, :c_requirements, :created_at, :updated_at
json.url course_url(course, format: :json)
