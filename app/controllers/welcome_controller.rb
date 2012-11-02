class WelcomeController < ApplicationController
  skip_before_filter :authenticate
  def home
    @current_cart = current_cart
  end

  def thank_you
  end

  def register
    @user = User.new
  end


end
