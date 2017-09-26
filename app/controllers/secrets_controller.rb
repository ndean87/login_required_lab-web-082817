class SecretsController < ApplicationController

  before_action :require_login


  def show
    if session[:name]
      erb :show
    else
      redirect_to '/login'

  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
