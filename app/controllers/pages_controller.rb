class PagesController < ApplicationController

  def home
  end

  def consultant_services
  end

  def about
  end

  def projects
    @projects = Project.all
  end

  def publications
    @publications = Document.where(category: 'publications')
    @power_points = Document.where(category: 'power_points')
  end

end
