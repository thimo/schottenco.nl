class ContentNewslettersController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Nieuwsbrief", :content_newsletters_path

  def index
    @content_newsletters = ContentNewsletter.desc.page(params[:page]).per(10)
  end

  def show
    @content_newsletter = ContentNewsletter.find(params[:id])

    add_breadcrumb @content_newsletter.title, content_newsletter_path(@content_newsletter)
  end
end
