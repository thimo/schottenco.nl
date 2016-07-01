class Admin::ContentImagesController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Plaatjes", :admin_content_images_path

  def index
    @content_images = ContentImage.all.order(:name)
  end

  def show
    @content_image = ContentImage.find(params[:id])

    add_breadcrumb @content_image.name
  end

  def new
    @content_image = ContentImage.new

    add_breadcrumb "Nieuw"
  end

  def create
    @content_image = ContentImage.new(content_image_params)

    if @content_image.save
      flash[:success] = 'Plaatje is aangemaakt.'
      redirect_to [:admin, @content_image]
    else
      render 'new'
    end
  end

  def edit
    @content_image = ContentImage.find(params[:id])

    add_breadcrumb @content_image.name
  end

  def update
    @content_image = ContentImage.find(params[:id])

    if @content_image.update_attributes(content_image_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to [:admin, @content_image]
    else
      render 'edit'
    end
  end

  def destroy
    @content_image = ContentImage.find(params[:id])

    flash[:success] = "Plaatje \"#{@content_image.name}\" verwijderd."
    @content_image.destroy
    redirect_to admin_content_images_url
  end

  private

    def content_image_params
      params.require(:content_image).permit(:name, :image)
    end
end
