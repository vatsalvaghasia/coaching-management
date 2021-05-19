class Paper < ApplicationRecord
	has_one_attached :file
  belongs_to :category
  belongs_to :month
  belongs_to :year
end
