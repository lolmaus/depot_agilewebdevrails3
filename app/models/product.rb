class Product < ActiveRecord::Base

	validates :title,
	          presence: true,
	          uniqueness: true

	validates :price,
	          numericality: { greater_than_or_equal_to: 0.01 }


	validates :image_url,
	          format:     { with:         %r{\.(gif|jpg|jpeg|png)$}i,
	                        message:      'must be a URL for GIF, JPG or PNG image.', },
	          allow_blank:  true


end
