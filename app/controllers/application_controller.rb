require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  before_action :set_constants

  include Clearance::Controller

  private
  def set_constants
    @images ||= PageSetting.find(1)
  end
end
