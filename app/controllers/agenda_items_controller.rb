class AgendaItemsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar", except: [:index]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Agenda", :agenda_items_path

  def index
    @agenda_items = AgendaItem.up_next.page(params[:page])
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])

    add_breadcrumb @agenda_item.title, agenda_item_path(@agenda_item)
  end
end
