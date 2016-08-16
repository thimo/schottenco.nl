class Admin::ContentTextsController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Teksten", :admin_content_texts_path

  def index
    @content_texts = ContentText.asc
  end

  def show
    @content_text = ContentText.find(params[:id])

    add_breadcrumb @content_text.name
  end

  def new
    @content_text = ContentText.new

    add_breadcrumb "Nieuw"
  end

  def create
    @content_text = ContentText.new(content_text_params)

    if @content_text.save
      flash[:success] = 'Tekst is aangemaakt.'
      redirect_to admin_content_texts_path
    else
      render 'new'
    end
  end

  def edit
    @content_text = ContentText.find(params[:id])

    add_breadcrumb @content_text.name
  end

  def update
    @content_text = ContentText.find(params[:id])

    if @content_text.update_attributes(content_text_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to admin_content_texts_path
    else
      render 'edit'
    end
  end

  def destroy
    @content_text = ContentText.find(params[:id])

    flash[:success] = "Tekst is verwijderd."
    @content_text.destroy
    redirect_to admin_content_texts_path
  end

  private

    def content_text_params
      params.require(:content_text).permit(:name, :title, :body)
    end
end
