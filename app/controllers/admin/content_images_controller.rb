class Admin::ContentImagesController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Plaatjes", :admin_content_images_path

  def index
    @content_images = ContentImage.asc
  end

  def show
    @content_image = ContentImage.find(params[:id])

    add_breadcrumb @content_image.name
  end

  def new
    @content_image = ContentImage.new

    @content_image.imageable_id = params[:imageable_id] unless params[:imageable_id].blank?
    @content_image.imageable_type = params[:imageable_type] unless params[:imageable_type].blank?

    add_breadcrumb "Nieuw"
  end

  def create
    @content_image = ContentImage.new(content_image_params)

    if @content_image.save
      flash[:success] = 'Plaatje is aangemaakt.'
      if @content_image.imageable.nil?
        redirect_to admin_content_images_path
      else
        redirect_to [:admin, @content_image.imageable]
      end
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
      redirect_to admin_content_images_path
    else
      render 'edit'
    end
  end

  def destroy
    @content_image = ContentImage.find(params[:id])

    flash[:success] = "Plaatje is verwijderd."
    @content_image.destroy
    redirect_to admin_content_images_path
  end

  private

    def content_image_params
      params.require(:content_image).permit(:name, :image, :imageable_id, :imageable_type)
    end
end
