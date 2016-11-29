class Micropost < ApplicationRecord
	has_many :microposts
	validates :content, length: { maximum: 140 }, presence: true

end
