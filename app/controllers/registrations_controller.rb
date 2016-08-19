class RegistrationsController < ApplicationController
  load_and_authorize_resource
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path
  layout "application_with_sidebar" #, except: [:index, :placeholder]

  def new
    @registration = Registration.new(defaults)
    @registration.user = current_user
    @agenda_item = AgendaItem.find(params[:agenda_item_id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
    add_breadcrumb "Aanmelden"
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.user = current_user
    @agenda_item = AgendaItem.find(params[:agenda_item_id])
    @registration.agenda_item = @agenda_item

    if @registration.save
      flash[:success] = 'Bedankt voor je aanmelding. We hebben ter bevestiging een e-mail gestuurd.'
      # TODO send email
      if current_user.nil?
        redirect_to @agenda_item
      else
        redirect_to @registration
      end
    else
      render 'new'
    end
  end

  def show
    @registration = Registration.find(params[:id])
    @agenda_item = @registration.agenda_item

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
    add_breadcrumb "Aanmelding"
  end

  private

    def registration_params
      params.require(:registration).permit(:name, :email, :address, :phone, :zip, :city, :country)
    end

    def defaults
      # {agenda_item_id: params[:agenda_item_id]}
      {country: "NL"}
    end
end
