class RegistrationsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path

  def new
    @registration = Registration.new(defaults)
    @registration.user = current_user
    @agenda_item = AgendaItem.find(params[:agenda_item_id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
    add_breadcrumb "Aanmelden"
  end

  def create
    @registration = Registration.new(registration_params)
    @agenda_item = AgendaItem.find(params[:agenda_item_id])
    @registration.agenda_item = @agenda_item
    if current_user.nil?
      user = User.find_by(email: @registration.email.downcase)
      if user.nil? && @registration.valid?
        user = User.create_from_registration(@registration)
        # sign_in(:user, user)
      end
      @registration.user = user
    else
      @registration.user = current_user
    end

    if @registration.save
      flash[:success] = 'Bedankt voor je aanmelding. We hebben ter bevestiging een e-mail gestuurd.'
      @registration.send_confirmation_email
      @registration.send_admin_notification_email

      # if current_user.nil?
      redirect_to @agenda_item
      # else
      #   redirect_to @registration
      # end
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
      params.require(:registration).permit(:name, :email, :address, :phone, :zip, :city, :country, :general_terms)
    end

    def defaults
      # {agenda_item_id: params[:agenda_item_id]}
      default_values = {country: "NL"}
      unless current_user.nil?
        default_values[:name] = current_user.name
        default_values[:phone] = current_user.phone
        default_values[:email] = current_user.email
        default_values[:address] = current_user.address
        default_values[:zip] = current_user.zip
        default_values[:city] = current_user.city
        default_values[:country] = current_user.country
      end
      default_values
    end
end
