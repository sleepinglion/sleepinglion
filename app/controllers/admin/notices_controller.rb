class Admin::NoticesController < Admin::AdminController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

  def initialize(*params)
    super(*params)
    @controller_name=t('activerecord.models.notice')
    @script="board/index"

    get_menu('notices')
  end

  # GET /notices
  # GET /notices.json
  def index
    @admin_notices = Notice.order(@menu_setting.order).page(params[:page]).per(@menu_setting.per)
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @admin_notice = Notice.new
    @admin_notice.build_notice_content

    @script="board/new"
  end

  # GET /notices/1/edit
  def edit
    @script="board/edit"
  end

  # POST /notices
  # POST /notices.json
  def create
    @admin_notice = Notice.new(notice_params)

    @script="board/new"

    respond_to do |format|
      if @admin_notice.save
        format.html { redirect_to admin_notices_url, notice: @controller_name +t(:message_success_create)}
        format.json { render action: 'show', status: :created, location: @admin_notice }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notices/1
  # PATCH/PUT /notices/1.json
  def update
    @script="board/edit"

    respond_to do |format|
      if @admin_notice.update(notice_params)
        format.html { redirect_to admin_notices_url, notice: @controller_name +t(:message_success_update)}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @admin_notice.destroy
    respond_to do |format|
      format.html { redirect_to admin_notices_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_notice
    @admin_notice = Notice.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def notice_params
    params.require(:notice).permit(:id,:title,notice_content_attributes: [:id,:content]).merge(user_id: current_user.id)
  end
end
