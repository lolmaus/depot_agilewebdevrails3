class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_time

  def get_time
    @time = Time.now
  end
end
