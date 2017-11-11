class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	validates :text, presence: true
	validates :text, format: { with: /\A[a-zA-Z0-9]+\Z/ }
	validates :text, format: { without: /\s/ }
end
