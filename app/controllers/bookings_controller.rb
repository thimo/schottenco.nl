class BookingsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path

  def new
    @booking = Booking.new(defaults)
    @booking.user = current_user
    @agenda_item = AgendaItem.find(params[:agenda_item_id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
    add_breadcrumb "Aanmelden"
  end

  def create
    @booking = Booking.new(booking_params)
    @agenda_item = AgendaItem.find(params[:agenda_item_id])
    @booking.agenda_item = @agenda_item
    if current_user.nil?
      user = User.find_by(email: @booking.email.downcase)
      if user.nil? && @booking.valid?
        user = User.create_from_booking(@booking)
        # sign_in(:user, user)
      end
      @booking.user = user
    else
      @booking.user = current_user
    end

    if @booking.save
      flash[:success] = 'Bedankt voor je aanmelding. We hebben ter bevestiging een e-mail gestuurd.'
      @booking.send_confirmation_email
      @booking.send_admin_notification_email

      # if current_user.nil?
      redirect_to @agenda_item
      # else
      #   redirect_to @booking
      # end
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @agenda_item = @booking.agenda_item

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
    add_breadcrumb "Aanmelding"
  end

  private

    def booking_params
      params.require(:booking).permit(:name, :email, :address, :phone, :zip, :city, :country, :general_terms)
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
