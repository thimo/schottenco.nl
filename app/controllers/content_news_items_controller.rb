class ContentNewsItemsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Nieuws", :content_news_items_path

  def index
    @content_news_items = ContentNewsItem.desc.page(params[:page]).per(10)
  end

  def show
    @content_news_item = ContentNewsItem.find(params[:id])

    add_breadcrumb @content_news_item.title, content_news_item_path(@content_news_item)
  end
end
