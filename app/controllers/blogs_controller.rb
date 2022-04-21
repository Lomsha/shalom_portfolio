class BlogsController < ApplicationController
<<<<<<< HEAD
  before_action :set_blog, only: %i[ show edit update destroy toggle_status]
  layout "blog"
  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.special_blogs
    @page_title = "My Portfolio Blog"
=======
<<<<<<< HEAD
  before_action :set_blog, only: %i[ show edit update destroy toggle_status]
  layout "blog"
  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.special_blogs
    @page_title = "My Portfolio Blog"
=======
  before_action :set_blog, only: %i[ show edit update destroy ]

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all
>>>>>>> Initial commit
>>>>>>> fixforbug
  end

  # GET /blogs/1 or /blogs/1.json
  def show
<<<<<<< HEAD
    @page_title = @blog.title
    @seo_keywords = @blog.body
=======
<<<<<<< HEAD
    @page_title = @blog.title
    @seo_keywords = @blog.body
=======
>>>>>>> Initial commit
>>>>>>> fixforbug
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully deleted." }
      format.json { head :no_content }
<<<<<<< HEAD
    end  
=======
<<<<<<< HEAD
    end  
  end

    def toggle_status
      if @blog.draft?
        @blog.published!
      elsif  @blog.published?
        @blog.draft!
      end
     redirect_to blogs_url, notice: "Blog was successfully updated."
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
=======
    end
>>>>>>> fixforbug
  end

    def toggle_status
      if @blog.draft?
        @blog.published!
      elsif  @blog.published?
        @blog.draft!
      end
     redirect_to blogs_url, notice: "Blog was successfully updated."
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
<<<<<<< HEAD
      @blog = Blog.friendly.find(params[:id])
=======
      @blog = Blog.find(params[:id])
>>>>>>> Initial commit
>>>>>>> fixforbug
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
<<<<<<< HEAD


=======
<<<<<<< HEAD


=======
>>>>>>> Initial commit
>>>>>>> fixforbug
