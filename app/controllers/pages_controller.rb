class PagesController < ApplicationController
  before_action :load_new_contact_form

  def home
    @updates = Update.homepage
  end

  def consultant_services
  end

  def about
  end

  def projects
    @projects = Document.where(category: 'projects')
    @project_headings = @projects.reorder(:heading_position).pluck(:heading, :heading_position).uniq.reject { |h| h[1].nil? }.map { |e| e[0] }
  end

  def publications
    @publications = Document.where(category: 'publications')
    @publication_headings = @publications.reorder(:heading_position).pluck(:heading, :heading_position).uniq.reject { |h| h[1].nil? }.map { |e| e[0] }

    @power_points = Document.where(category: 'power_points')
    @power_point_headings = @power_points.reorder(:heading_position).pluck(:heading, :heading_position).uniq.reject { |h| h[1].nil? }.map { |e| e[0] }
  end

  def topic_briefs
    @topic_briefs = Document.where(category: 'topic_briefs')
    @topic_brief_headings = @topic_briefs.reorder(:heading_position).pluck(:heading, :heading_position).uniq.reject { |h| h[1].nil? }.map { |e| e[0] }
  end

  def select_clients
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
