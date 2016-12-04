class ImagesController < ApplicationController

  def index
    @images = Image.all
    respond_to do |format|
      format.json
    end
  end

end
