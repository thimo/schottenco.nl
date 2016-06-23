class AdminController < ApplicationController
  add_breadcrumb "Admin", "/admin"
  before_action :admin_user

  def index
    show
  end

  def show
    # authorize :admin
    redirect_to admin_content_texts_path
  end

  private

    def admin_user
      # permission_denied unless policy(:admin).show?
    end
end
