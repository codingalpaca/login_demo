class PagesController < ApplicationController
  def homepage
    session[:message] = '我會一直存在喔！'
    render json: session
  end

  def about
    render json: session
  end
end
