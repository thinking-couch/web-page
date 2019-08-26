# frozen_string_literal: true

module Admin
  class PageSettingsController < Admin::BaseController
    respond_to :js, only: %i[new edit]

    def new
      @page_setting ||= PageSetting.new
    end

    def edit
      @page_setting = PageSetting.find(params[:id])
    end

    def create

    end

    def update

    end

    private

    def page_settings
      params.require(:page_settings).permit(:id, :url_video, :hero_title, :hero_paragrap)
    end
  end
end
