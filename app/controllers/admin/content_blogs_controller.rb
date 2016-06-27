class Admin::ContentBlogsController < AdminController
  add_breadcrumb "Content"
  add_breadcrumb "Blog artikelen", :admin_content_blogs_path

  def index
    @content_blogs = ContentBlog.all.order(:published_at)
  end

  def show
    @content_blog = ContentBlog.find(params[:id])

    add_breadcrumb @content_blog.name
  end

  def new
    @content_blog = ContentBlog.new

    add_breadcrumb "Nieuw"
  end

  def create
    @content_blog = ContentBlog.new(content_blog_params)

    if @content_blog.save
      flash[:success] = 'Blog artikel is aangemaakt.'
      redirect_to [:admin, @content_blog]
    else
      render 'new'
    end
  end

  def edit
    @content_blog = ContentBlog.find(params[:id])

    add_breadcrumb @content_blog.name
  end

  def update
    @content_blog = ContentBlog.find(params[:id])

    if @content_blog.update_attributes(content_blog_params)
      flash[:success] = "De wijzigingen zijn verwerkt."
      redirect_to [:admin, @content_blog]
    else
      render 'edit'
    end
  end

  def destroy
    @content_blog = ContentBlog.find(params[:id])

    flash[:success] = "Blog artikel \"#{@content_blog.name}\" verwijderd."
    @content_blog.destroy
    redirect_to admin_content_blogs_url
  end

  private

    def content_blog_params
      params.require(:content_blog).permit(:name, :title, :body)
    end
end
