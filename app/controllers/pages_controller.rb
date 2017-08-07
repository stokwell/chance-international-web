class PagesController < ApplicationController
  before_action :authenticate_user!, only: :admin

  def home
    @posts = Post.all.limit(3)
    @projects= Project.all.limit(3)
    render :home
  end

  def about
    render :about
  end

  def contact
    render :contact
  end

  def exchange
    render :exchange
  end

  def expert
    render :expert
  end

  def volunteer
    render :volunteer
  end

  def trip
    render :trip
  end

  def admin
    render :admin
  end

  def ads
    @ads = Ad.all
    render :ads
  end
end
