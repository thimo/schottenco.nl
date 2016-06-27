class Admin::ContentNewslettersController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Nieuwsbrieven", :admin_content_newsletters_path

  def index
    @content_newsletters = ContentNewsletter.all.order(:published_at)
  end

  def show
    @content_newsletter = ContentNewsletter.find(params[:id])

    add_breadcrumb @content_newsletter.name
  end

  def new
    @content_newsletter = ContentNewsletter.new

    add_breadcrumb "Nieuw"
  end

  def create
    @content_newsletter = ContentNewsletter.new(content_newsletter_params)

    if @content_newsletter.save
      flash[:success] = 'Nieuwsbrief is aangemaakt.'
      redirect_to [:admin, @content_newsletter]
    else
      render 'new'
    end
  end

  def edit
    @content_newsletter = ContentNewsletter.find(params[:id])

    add_breadcrumb @content_newsletter.name
  end

  def update
    @content_newsletter = ContentNewsletter.find(params[:id])

    if @content_newsletter.update_attributes(content_newsletter_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to [:admin, @content_newsletter]
    else
      render 'edit'
    end
  end

  def destroy
    @content_newsletter = ContentNewsletter.find(params[:id])

    flash[:success] = "Nieuwsbrief \"#{@content_newsletter.name}\" verwijderd."
    @content_newsletter.destroy
    redirect_to admin_content_newsletters_url
  end

  private

    def content_newsletter_params
      params.require(:content_newsletter).permit(:name, :title, :body)
    end
end
