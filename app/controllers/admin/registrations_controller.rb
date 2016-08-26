class Admin::RegistrationsController < AdminController
  add_breadcrumb "Agenda", :admin_agenda_items_path

  def index
    @agenda_item = AgendaItem.find(params[:agenda_item_id])
    @registrations = @agenda_item.registrations

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_registrations_path(@agenda_item)
  end

  def show
    @registration = Registration.find(params[:id])
    @agenda_item = @registration.agenda_item

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_registrations_path(@agenda_item)
    add_breadcrumb @registration.name, [:admin, @registration]
  end

  def edit
    @registration = Registration.find(params[:id])
    @agenda_item = @registration.agenda_item

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_registrations_path(@agenda_item)
    add_breadcrumb @registration.name, [:admin, @registration]
  end

  def update
    @registration = Registration.find(params[:id])
    @agenda_item = @registration.agenda_item

    if @registration.update_attributes(registration_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_agenda_item_registrations_path([@agenda_item])
    else
      render 'edit'
    end
  end

  private

    def registration_params
      params.require(:registration).permit(:invoice_sent_at, :paid_for_at)
    end

end
