class Product < ActiveRecord::Base	
	validates :product_name, presence: true, length: { maximum: 20 }
	validates :product_description, length: { in: 2..500 }
	validates :product_avail_quantity, numericality: { only_integer: true } 
	validates :product_quantity, numericality: {only_integer: true}
	has_attached_file :product_images, :styles => { :small => "150x150>" },
                      :url  => "/assets/products/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
    validates_attachment_presence :product_images
	validates_attachment_size :product_images, :less_than => 5.megabytes
	validates_attachment_content_type :product_images, :content_type => ['image/jpeg', 'image/png']
end
