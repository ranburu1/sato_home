class Housework < ApplicationRecord
  validates :title,  presence: true
  validates :manner, presence: true
end
