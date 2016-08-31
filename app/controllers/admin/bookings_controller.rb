class Admin::BookingsController < AdminController
  add_breadcrumb "Agenda", :admin_agenda_items_path

  def index
    @agenda_item = AgendaItem.find(params[:agenda_item_id])
    @bookings = @agenda_item.bookings

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_bookings_path(@agenda_item)
  end

  def show
    @booking = Booking.find(params[:id])
    @agenda_item = @booking.agenda_item

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_bookings_path(@agenda_item)
    add_breadcrumb @booking.name, [:admin, @booking]
  end

  def edit
    @booking = Booking.find(params[:id])
    @agenda_item = @booking.agenda_item

    add_breadcrumb @agenda_item.title, [:admin, @agenda_item]
    add_breadcrumb "Aanmeldingen", admin_agenda_item_bookings_path(@agenda_item)
    add_breadcrumb @booking.name, [:admin, @booking]
  end

  def update
    @booking = Booking.find(params[:id])
    @agenda_item = @booking.agenda_item

    if @booking.update_attributes(booking_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_agenda_item_bookings_path([@agenda_item])
    else
      render 'edit'
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:invoice_sent_at, :paid_for_at)
    end

end
