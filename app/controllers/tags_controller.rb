class TagsController < BoardController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def initialize(*params)
    super(*params)
    @controller_name=t('activerecord.models.blog')
    @script="board/index"
  end

  # GET /tags
  # GET /tags.json
  def index
    if params[:tag].present?
      @blogs = Blog.tagged_with(params[:tag]).page(params[:page]).per(15)
      @blog_categories=BlogCategory.where(:leaf=>true).where(:enable=>true)
      @meta_keywords=params[:tag]+','+t(:meta_keywords)
    end
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
  end

  # GET /tags/new
  def new
    @tag = Tag.new
    @tag.build_tag_content

    @script="board/new"
  end

  # GET /tags/1/edit
  def edit
    @script="board/edit"
  end

  # POST /tags
  # POST /tags.json
  def create
    @tag = Tag.new(tag_params)
    @tag.user_id=current_user.id

    @script="board/new"

    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, tag: @controller_name +t(:message_success_create)}
        format.json { render action: 'show', status: :created, location: @tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    @script="board/edit"

    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to @tag, tag: @controller_name +t(:message_success_update)}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to tags_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tag
    @tag = Tag.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tag_params
    params.require(:tag).permit(:id,:title,tag_content_attributes: [:id,:content])
  end
end
