class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception 
  before_action :authenticate_user!
  $GreenDelay = 12*60*60
end
