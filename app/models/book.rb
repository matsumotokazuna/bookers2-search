class Book < ApplicationRecord
	belongs_to :user
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}

	def self.search(search)
		if search
		  Book.where(['title LIKE ?', "%#{search}%"])
		else
		  Book.all
		end
	end
end
