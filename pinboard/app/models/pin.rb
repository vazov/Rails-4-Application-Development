class Pin < ActiveRecord::Base
	belongs_to :board

	#extend FriendlyId
    #friendly_id :name, use: :slugged

    mount_uploader :image, ImageUploader
    
    paginates_per 10
end
