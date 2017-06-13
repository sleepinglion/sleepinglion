class Admin::FaqCategoriesController < Admin::AdminController
  before_action :set_admin_blog_category, only: [:show, :edit, :update, :destroy]

  def initialize(*params)
    super(*params)

    @category = t(:menu_faq,scope:[:admin_menu])
    @controller_name = t('activerecord.models.blog_category')
  end

  # GET /admin/blog_categories
  # GET /admin/blog_categories.json
  def index
    @admin_blog_categories = BlogCategory.order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_blog_categories }
    end
  end

  # GET /admin/blog_categories/1
  # GET /admin/blog_categories/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_blog_category }
    end
  end

  # GET /admin/blog_categories/new
  # GET /admin/blog_categories/new.json
  def new
    @admin_blog_category = BlogCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_blog_category }
    end
  end

  # GET /admin/blog_categories/1/edit
  def edit
  end

  # POST /admin/blog_categories
  # POST /admin/blog_categories.json
  def create
    @admin_blog_category = BlogCategory.new(params[:blog_category])

    respond_to do |format|
      if @admin_blog_category.save
        format.html { redirect_to admin_blogs_path(@admin_blog_category), notice: 'Faq category was successfully created.' }
        format.json { render json: @admin_blog_category, status: :created, location: @admin_blog_category }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_blog_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/blog_categories/1
  # PUT /admin/blog_categories/1.json
  def update
    respond_to do |format|
      if @admin_blog_category.update_attributes(params[:blog_category])
        format.html { redirect_to admin_blogs_path(@admin_blog_category), notice: 'Faq category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_blog_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_categories/1
  # DELETE /admin/blog_categories/1.json
  def destroy
    @admin_blog_category.destroy

    respond_to do |format|
      format.html { redirect_to admin_blogs_url }
      format.json { head :ok }
    end
  end
end
