# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @statistics ||= Statistic.showed
  end
end
