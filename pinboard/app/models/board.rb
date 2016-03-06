class Board < ActiveRecord::Base
	has_many :pins
	belongs_to :user
    
    validates :title, presence: true
	#extend FriendlyId
    #friendly_id :title, use: :slugged
end
