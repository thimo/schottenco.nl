class Admin::UsersController < AdminController
  add_breadcrumb "Gebruikers", :admin_users_path

  def index
    @users = User.asc
  end

  def show
    @user = User.find(params[:id])

    add_breadcrumb @user.name
  end

  def new
    @user = User.new(defaults)

    add_breadcrumb "Nieuw"
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'Gebruiker is aangemaakt.'
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])

    add_breadcrumb @user.name
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    flash[:success] = "Gebruiker is verwijderd."
    @user.destroy
    redirect_to admin_users_path
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :middle_name, :last_name, :gender, :email, :phone, :birthdate, :address, :zip, :city, :country, :user_type )
    end

    def defaults
      {}
    end
end
