# frozen_string_literal: true

module Admin
  class PageSettingsController < Admin::BaseController
    before_action :page_setting, only: %i[edit]

    def new
      @page_setting ||= PageSetting.new
    end

    def edit; end

    def create
      @page_setting = PageSetting.create(page_settings_params)
      if @page_setting.valid?
        redirect_to admin_root_path
      else
        render :edit
      end
    end

    def update
      @page_setting = PageSetting.find(params[:id]).update_attributes(page_settings_params)
      if @page_setting
        redirect_to admin_root_path
      else
        render :edit
      end
    end

    private

    def page_settings_params
      params.require(:page_setting).permit(:id, :url_video, :hero_title, :hero_paragraph, :hero_image, :hero_image_mobile)
    end

    def page_setting
      @page_setting = PageSetting.find(params[:id])
    end
  end
end
