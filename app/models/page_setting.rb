class PageSetting < ApplicationRecord
  has_attached_file :hero_image,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: ActionController::Base.helpers.asset_url("/assets/shared/desktop/couple.svg")
  validates_attachment_content_type :hero_image, content_type: /\Aimage\/(jpg|jpeg|pjpeg|png|x-png|gif)\z/,
                                    message: 'file type is not allowed (only jpeg/png/gif images)'

  has_attached_file :hero_image_mobile,
                    styles: { medium: '300x300>', thumb: '100x100>' },
                    default_url: ActionController::Base.helpers.asset_url("/assets/shared/mobile/couple.svg")
  validates_attachment_content_type :hero_image_mobile, content_type: /\Aimage\/(jpg|jpeg|pjpeg|png|x-png|gif)\z/,
                                    message: 'file type is not allowed (only jpeg/png/gif images)'
end
