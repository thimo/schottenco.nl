class Admin::ContentPagesController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Pagina's", :admin_content_pages_path

  def index
    @content_pages = ContentPage.all.order(:url)
  end

  def show
    @content_page = ContentPage.find(params[:id])

    add_breadcrumb @content_page.name
  end

  def new
    @content_page = ContentPage.new

    add_breadcrumb "Nieuw"
  end

  def create
    @content_page = ContentPage.new(content_page_params)

    if @content_page.save
      flash[:success] = 'Pagina is aangemaakt.'
      redirect_to [:admin, @content_page]
    else
      render 'new'
    end
  end

  def edit
    @content_page = ContentPage.find(params[:id])

    add_breadcrumb @content_page.name
  end

  def update
    @content_page = ContentPage.find(params[:id])

    if @content_page.update_attributes(content_page_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to [:admin, @content_page]
    else
      render 'edit'
    end
  end

  def destroy
    @content_page = ContentPage.find(params[:id])

    flash[:success] = "Pagina \"#{@content_page.name}\" verwijderd."
    @content_page.destroy
    redirect_to admin_content_pages_url
  end

  private

    def content_page_params
      params.require(:content_page).permit(:name, :title, :body)
    end
end