class AddAttachmentProductImagesToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product_images
    end
  end

  def self.down
    remove_attachment :products, :product_images
  end
end
