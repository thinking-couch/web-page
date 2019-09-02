module ApplicationHelper
  def hero_title
    PageSetting.find(1).hero_title.blank? ? t('header.title') : PageSetting.find(1).hero_title
  end

  def hero_paragraph
    PageSetting.find(1).hero_paragraph.blank? ? t('header.description') : PageSetting.find(1).hero_paragraph
  end
end
