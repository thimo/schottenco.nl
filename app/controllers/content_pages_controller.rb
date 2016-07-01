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

    @content_page = ContentPage.find_by(url: slug) or not_found
  end

  private

    def not_found
      # raise ActionController::RoutingError.new('Not Found')
      # fail ActiveRecord::RecordNotFound, 'Not Found'
      fail ActionController::RoutingError, 'Not Found'
    end
end
