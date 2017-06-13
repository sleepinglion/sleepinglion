class Admin::GalleryCategoriesController < Admin::AdminController
  before_action :set_admin_gallery_category, only: [:show, :edit, :update, :destroy]

  def initialize(*params)
    super(*params)

    @category = t(:menu_gallery,scope:[:admin_menu])
    @controller_name = t('activerecord.models.gallery_category')
  end

  # GET /admin/gallery_categories
  # GET /admin/gallery_categories.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @admin_gallery_categories = GalleryCategory.order('id desc').page(params[:page]).per(params[:per_page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @admin_gallery_categories }
    end
  end

  # GET /admin/gallery_categories/1
  # GET /admin/gallery_categories/1.json
  def show
    @admin_gallery = Gallery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @admin_gallery }
    end
  end

  # GET /admin/gallery_categories/new
  # GET /admin/gallery_categories/new.json
  def new
    @admin_gallery = Gallery.new
    @admin_gallery_categories=GalleryCategory.all
    @admin_gallery_category_id=params[:gallery_category_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @admin_gallery }
    end
  end

  # GET /admin/gallery_categories/1/edit
  def edit
    @admin_gallery_categories=GalleryCategory.all
    @admin_gallery_category_id=@admin_gallery.gallery_category.id
  end

  # POST /admin/gallery_categories
  # POST /admin/gallery_categories.json
  def create
    @admin_gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @admin_gallery.save
        format.html { redirect_to admin_gallery_categories_url(:gallery_category_id=>@admin_gallery.gallery_category_id), :notice => '갤러리 사진이 등록되었습니다.' }
        format.json { render :json => @admin_gallery, :status => :created, :location => @admin_gallery }
      else
        format.html { render :action => "new" }
        format.json { render :json => @admin_gallery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/gallery_categories/1
  # PUT /admin/gallery_categories/1.json
  def update
    respond_to do |format|
      if @admin_gallery.update_attributes(params[:gallery])
        format.html { redirect_to admin_gallery_categories_url(:gallery_category_id=>@admin_gallery.gallery_category_id), :notice => '갤러리 사진이 수정되었습니다.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @admin_gallery.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/gallery_categories/1
  # DELETE /admin/gallery_categories/1.json
  def destroy
    @admin_gallery.destroy

    respond_to do |format|
      format.html { redirect_to admin_gallery_categories_url(:gallery_category_id=>@admin_gallery.gallery_category_id) }
      format.json { head :ok }
    end
  end
end
