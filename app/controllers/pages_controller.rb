class PagesController < ApplicationController

  def index
  @pages = Page.all
  end

  def new
  @page = Page.new
  end

  def info
  redirect_to new_page  
  end

end
