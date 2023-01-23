class Course < ApplicationRecord
    has_one_attached :course_image
    has_many :lessions
end
