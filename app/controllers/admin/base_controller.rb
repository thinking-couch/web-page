class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :require_login

  private
end
