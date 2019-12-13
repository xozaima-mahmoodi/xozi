class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!
  protect_from_forgery prepend: true
  before_action :authenticate_user!, except: [:app]


  def app
    render 'layouts/application'
  end


  private

  def authenticate_user!
    return super if user_signed_in?

    render json: { message: 'You are not loged in! Please try agin' }
  end
end
