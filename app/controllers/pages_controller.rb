class PagesController < ApplicationController
  def index
  end

  def show
    @page = Page.friendly.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def pages_params

  end
end
