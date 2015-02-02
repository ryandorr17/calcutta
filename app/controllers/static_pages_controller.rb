class StaticPagesController < ApplicationController
  def home
    @events = Event.all
    @users = User.all
  end

  def help
  end

  def about
  end

  def contact
  end

  def blog
  end
end
