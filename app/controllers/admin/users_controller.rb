# encoding: utf-8

class Admin::UsersController < Admin::AdminController
  def initialize(*params)
    super(*params)
    @controller_name='수정이 요리'
  end
   
  # GET /admin_users
  # GET /admin_users.json
  def index
    @admin_users = User.order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_users }
    end
  end

  # GET /admin_users/1
  # GET /admin_users/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_user }
    end
  end

  # GET /admin_users/new
  # GET /admin_users/new.json
  def new
    @admin_user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_user }
    end
  end

  # GET /admin_users/1/edit
  def edit
  end

  # POST /admin_users
  # POST /admin_users.json
  def create
    @admin_user = User.new(admin_user_params)

    respond_to do |format|
      if @admin_user.save
        format.html { redirect_to @admin_user, notice: @controller_name +t(:message_success_create) }
        format.json { render json: @admin_user, status: :created, location: @admin_user }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_users/1
  # PUT /admin_users/1.json
  def update
    respond_to do |format|
      if @admin_user.update_attributes(admin_user_params)
        format.html { redirect_to @admin_user, notice: @controller_name +t(:message_success_update) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_users/1
  # DELETE /admin_users/1.json
  def destroy
    @admin_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_users_url }
      format.json { head :no_content }
    end
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_user
    @admin_user = User.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_user_params
    params.require(:admin_user).permit(:id, :url, :title, :description, :photo)
  end  
end
