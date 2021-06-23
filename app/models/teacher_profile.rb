class TeacherProfile < ApplicationRecord
	has_one_attached :avatar
	resourcify
end
