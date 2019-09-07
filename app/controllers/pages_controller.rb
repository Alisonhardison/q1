class PagesController < ApplicationController

  def index
    @pages = Page.all
    @ideas = Idea.all
  end

  def new
    @page = Page.new
    @idea = Idea.new
  end

  def create
    Page.create(page_params)
    redirect_to root_path
  end

  private

  def page_params
    params.require(:page).permit(:idea, :description)
  end
  
  def info
    redirect_to new_page  
  end

end
