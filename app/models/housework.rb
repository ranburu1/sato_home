class Housework < ApplicationRecord
  validates :title,  presence: { message: 'タイトルを入力してください' }
  validates :manner, presence: { message: 'やり方を入力してください' }
end
