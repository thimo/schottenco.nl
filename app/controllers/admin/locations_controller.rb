class Admin::LocationsController < AdminController
  add_breadcrumb "Locaties", :admin_locations_path

  def index
    @locations = Location.asc
  end

  def show
    @location = Location.find(params[:id])

    add_breadcrumb @location.name
  end

  def new
    @location = Location.new

    add_breadcrumb "Nieuw"
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:success] = 'Locatie is aangemaakt.'
      redirect_to admin_locations_path
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])

    add_breadcrumb @location.name
  end

  def update
    @location = Location.find(params[:id])

    if @location.update_attributes(location_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_locations_path
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])

    flash[:success] = "Locatie is verwijderd."
    @location.destroy
    redirect_to admin_locations_path
  end

  private

    def location_params
      params.require(:location).permit(:name, :address, :zip, :city, :phone)
    end
end
