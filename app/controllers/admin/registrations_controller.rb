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
end
