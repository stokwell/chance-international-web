class PagesController < ApplicationController
  before_action :authenticate_user!, only: :admin

  def home
    @posts = Post.all.limit(6).reverse()
    @projects= Project.next_projects
    @ads = Ad.all
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

  def faq
    render :faq
  end

  def admin
    @ads = Ad.all
    @projects = Project.all
    @posts = Post.all
    render :admin
  end

  def ads
    @ads = Ad.all
    render :ads
  end
end
