class Admin::DashboardController < Admin::BaseController

  def index
    @statistics = Statistic.new
    @page ||= :dashboard
  end
end
