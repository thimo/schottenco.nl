class Admin::ContentNewslettersController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Nieuwsbrieven", :admin_content_newsletters_path

  def index
    @content_newsletters = ContentNewsletter.desc
  end

  def show
    @content_newsletter = ContentNewsletter.find(params[:id])

    add_breadcrumb @content_newsletter.title
  end

  def new
    @content_newsletter = ContentNewsletter.new(defaults)

    add_breadcrumb "Nieuw"
  end

  def create
    @content_newsletter = ContentNewsletter.new(content_newsletter_params)

    if @content_newsletter.save
      flash[:success] = 'Nieuwsbrief is aangemaakt.'
      redirect_to admin_content_newsletters_path
    else
      render 'new'
    end
  end

  def edit
    @content_newsletter = ContentNewsletter.find(params[:id])

    add_breadcrumb @content_newsletter.title
  end

  def update
    @content_newsletter = ContentNewsletter.find(params[:id])

    if @content_newsletter.update_attributes(content_newsletter_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_content_newsletters_path
    else
      render 'edit'
    end
  end

  def destroy
    @content_newsletter = ContentNewsletter.find(params[:id])

    flash[:success] = "Nieuwsbrief is verwijderd."
    @content_newsletter.destroy
    redirect_to admin_content_newsletters_path
  end

  private

    def content_newsletter_params
      params.require(:content_newsletter).permit(:published_at, :title, :intro, :body, :image, :image_cache, :remove_image)
    end

    def defaults
      {published_at: Time.zone.now}
    end
end
