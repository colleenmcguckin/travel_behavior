class PagesController < ApplicationController
  before_action :load_page, except: [:index]

  def index
  end

  def show
    @documents = Document.all
    @pages = Page.all
  end

  def edit
  end

  def update
    if @page.update(pages_params)
      redirect_to @page, notice: 'Page successfully updated.'
    else
      render :edit, notice: 'Could not update page at this time. Please try again'
    end
  end

  private

  def pages_params
    params.require(:page).permit :content
  end

  def load_page
    @page = Page.friendly.find(params[:id])
  end
end
