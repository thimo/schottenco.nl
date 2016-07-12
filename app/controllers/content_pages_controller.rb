class ContentPagesController < ApplicationController
  # load_and_authorize_resource
  skip_authorization_check

  def index
  end

  def placeholder
  end

  def show
    slug = params[:slug]
    redirect_to root_url if slug.blank?

    add_breadcrumb "Home", :root_path

    @content_page = ContentPage.find_by(url: slug) or not_found

    url_parts = @content_page.url.split('/')
    if url_parts.size > 1
      parent_page = ContentPage.find_by(url: url_parts[0])
      add_breadcrumb parent_page.title_for_menu, "/#{parent_page.url}" unless parent_page.nil?

      if url_parts.size > 2
        parent_page = ContentPage.find_by(url: "#{url_parts[0]}/#{url_parts[1]}")
        add_breadcrumb parent_page.title_for_menu, "/#{parent_page.url}" unless parent_page.nil?
      end
    end

    add_breadcrumb @content_page.title_for_menu, "/#{@content_page.url}"
  end

  private

    def not_found
      # raise ActionController::RoutingError.new('Not Found')
      # fail ActiveRecord::RecordNotFound, 'Not Found'
      fail ActionController::RoutingError, 'Not Found'
    end
end
