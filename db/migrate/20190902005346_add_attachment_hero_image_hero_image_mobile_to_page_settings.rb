class AddAttachmentHeroImageHeroImageMobileToPageSettings < ActiveRecord::Migration[5.2]
  def self.up
    change_table :page_settings do |t|
      t.attachment :hero_image
      t.attachment :hero_image_mobile
    end
  end

  def self.down
    remove_attachment :page_settings, :hero_image
    remove_attachment :page_settings, :hero_image_mobile
  end
end
