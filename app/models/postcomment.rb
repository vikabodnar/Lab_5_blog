class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validates :text, length: { in: 1..400}
validates :text, presence: true
validates :text, format: { with: /[a-zA-Z_#][\w.!?,&|@#$%^:'"-]*/ }


end


