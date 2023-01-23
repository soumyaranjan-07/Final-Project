class Lession < ApplicationRecord
  has_one_attached :lession_video
  belongs_to :course
end
