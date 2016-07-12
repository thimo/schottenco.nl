class AgendaItemsController < ApplicationController
  skip_authorization_check
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path

  def index
    @agenda_items = AgendaItem.up_next
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)

  end
end
