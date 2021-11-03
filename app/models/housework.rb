class Housework < ApplicationRecord
  validates :title,  presence: { message: 'タイトルを入力してください' }
  validates :manner, presence: { message: 'やり方を入力してください' }

  def self.search(search)
    if search != ""
      Housework.where('title LIKE(?)', "%#{search}%")
    else
      Housework.all
    end
  end
end
