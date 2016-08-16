class Admin::AgendaItemsController < AdminController
  add_breadcrumb "Agenda", :admin_agenda_items_path

  def index
    @agenda_items = AgendaItem.desc
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])

    add_breadcrumb @agenda_item.title
  end

  def new
    @agenda_item = AgendaItem.new(defaults)

    add_breadcrumb "Nieuw"
  end

  def create
    @agenda_item = AgendaItem.new(agenda_item_params)

    if @agenda_item.save
      flash[:success] = 'Agenda item is aangemaakt.'
      redirect_to admin_agenda_items_path
    else
      render 'new'
    end
  end

  def edit
    @agenda_item = AgendaItem.find(params[:id])

    add_breadcrumb @agenda_item.title
  end

  def update
    @agenda_item = AgendaItem.find(params[:id])

    if @agenda_item.update_attributes(agenda_item_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_agenda_items_path
    else
      render 'edit'
    end
  end

  def destroy
    @agenda_item = AgendaItem.find(params[:id])

    flash[:success] = "Agenda item is verwijderd."
    @agenda_item.destroy
    redirect_to admin_agenda_items_path
  end

  private

    def agenda_item_params
      params.require(:agenda_item).permit(:starts_at, :ends_at, :title, :intro, :body, :external_url, :registration_type, :content_page_id, :location_id)
    end

    def defaults
      {starts_at: Time.zone.now}
    end
end
