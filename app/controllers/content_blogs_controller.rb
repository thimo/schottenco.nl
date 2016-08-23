class ContentBlogsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Blog", :content_blogs_path

  def index
    @content_blogs = ContentBlog.desc.page(params[:page]).per(10)
  end

  def show
    @content_blog = ContentBlog.find(params[:id])

    add_breadcrumb @content_blog.title, content_blog_path(@content_blog)
  end
end
