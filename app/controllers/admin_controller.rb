class AdminController < ApplicationController
  add_breadcrumb "Admin", "/admin"
  before_action :authenticate_user!
  load_and_authorize_resource # Perform generic cancan auth

  def index
    show
  end

  def show
    # authorize :admin
    redirect_to admin_content_texts_path
  end

  def current_ability
    @current_ability ||= AdminAbility.new(current_user)
  end

end
