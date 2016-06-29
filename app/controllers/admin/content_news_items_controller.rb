class Admin::ContentNewsItemsController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Nieuwsberichten", :admin_content_news_items_path

  def index
    @content_news_items = ContentNewsItem.all.order(:published_at)
  end

  def show
    @content_news_item = ContentNewsItem.find(params[:id])

    add_breadcrumb @content_news_item.name
  end

  def new
    @content_news_item = ContentNewsItem.new(defaults)

    add_breadcrumb "Nieuw"
  end

  def create
    @content_news_item = ContentNewsItem.new(content_news_item_params)

    if @content_news_item.save
      flash[:success] = 'Nieuwsbericht is aangemaakt.'
      redirect_to [:admin, @content_news_item]
    else
      render 'new'
    end
  end

  def edit
    @content_news_item = ContentNewsItem.find(params[:id])

    add_breadcrumb @content_news_item.name
  end

  def update
    @content_news_item = ContentNewsItem.find(params[:id])

    if @content_news_item.update_attributes(content_news_item_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to [:admin, @content_news_item]
    else
      render 'edit'
    end
  end

  def destroy
    @content_news_item = ContentNewsItem.find(params[:id])

    flash[:success] = "Nieuwsbericht \"#{@content_news_item.name}\" verwijderd."
    @content_news_item.destroy
    redirect_to admin_content_news_items_url
  end

  private

    def content_news_item_params
      params.require(:content_news_item).permit(:name, :title, :body)
    end
    
    def defaults
      {published_at: Time.zone.now}
    end
end
