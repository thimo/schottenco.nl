class AgendaItemsController < ApplicationController
  load_and_authorize_resource
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path
  layout "application_with_sidebar", except: [:index]

  def index
    @agenda_items = AgendaItem.up_next
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
  end
end
