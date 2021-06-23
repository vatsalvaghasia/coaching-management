class Course < ApplicationRecord
	has_one_attached:image1
	has_one_attached:image2
	has_one_attached:image3
	rolify
end
