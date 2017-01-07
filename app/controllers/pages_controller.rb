class PagesController < ApplicationController
  before_action :load_new_contact_form

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

  def topic_briefs
    @topic_briefs = Document.where(category: 'topic_briefs')
  end

  def search_results
    search = params[:search]
    @search_term = search
    @power_points = Document.where('title ILIKE ? OR content ILIKE ? OR summary ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%").where(category: 'power_points')
    @publications = Document.where('title ILIKE ? OR content ILIKE ? OR summary ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%").where(category: 'publications')
    @topic_briefs = Document.where('title ILIKE ? OR content ILIKE ? OR summary ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%").where(category: 'topic_briefs')
    @projects = Project.where('title ILIKE ? OR description ILIKE ?', "%#{search}%", "%#{search}%")
  end

  private

  def load_new_contact_form
    @contact_form = ContactForm.new
  end

end
