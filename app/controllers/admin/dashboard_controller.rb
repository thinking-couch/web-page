class Admin::DashboardController < Admin::BaseController

  def index
    @page_setting = PageSetting.first_or_create(id: 1)
    @page ||= :dashboard
  end
end
