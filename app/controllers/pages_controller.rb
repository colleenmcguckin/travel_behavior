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

end
