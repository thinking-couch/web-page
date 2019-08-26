# frozen_string_literal: true

module Admin
  class StatisticsController < Admin::BaseController
    before_action :statistic, only: %i[edit destroy]
    respond_to :js, only: %i[new edit]
    def index
      @statistics ||= Statistic.all
      @page = :statistics
    end

    def new
      @statistic ||= Statistic.new
    end

    def create
      @statistic = Statistic.create(statistic_params)
      if @statistic.valid?
        redirect_to statistics_path
      else
        render :new
      end
    end

    def edit; end

    def update
      @statistic = Statistic.find(params[:id]).update_attributes(statistic_params)
      if @statistic
        redirect_to statistics_path
      else
        render :edit
      end
    end

    def destroy
      @statistic.destroy
    end

    private

    def statistic_params
      params.require(:statistic).permit(:id, :name, :amount, :show)
    end

    def statistic
      @statistic = Statistic.find(params[:id])
    end
  end
end
