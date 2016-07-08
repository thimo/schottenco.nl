class AgendaItemsController < ApplicationController
  skip_authorization_check

  def index
    @agenda_items = AgendaItem.up_next
  end

  def show
    @agenda_item = AgendaItem.find(params[:id])
  end
end
