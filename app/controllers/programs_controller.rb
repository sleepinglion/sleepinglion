class ProgramsController < BoardController
  impressionist :actions=>[:show]
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :set_ad, only: [:index, :show]

  def initialize(*params)
    super(*params)
    @controller_name=t('activerecord.models.program')
    @script="board/index"

    get_menu('programs')
  end

  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.order(:id=>'asc').page(params[:page]).per(5)
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
  end

  # GET /programs/new
  def new
    @program = Program.new
    @program.build_program_content

    @script="board/new"
  end

  # GET /programs/1/edit
  def edit
    @script="board/edit"
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(program_params)
    @program.user_id=current_user.id

    @script="board/new"

    respond_to do |format|
      if @program.save
        format.html { redirect_to @program, program: @controller_name +t(:message_success_create)}
        format.json { render action: 'show', status: :created, location: @program }
      else
        format.html { render action: 'new' }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programs/1
  # PATCH/PUT /programs/1.json
  def update
    @script="board/edit"

    respond_to do |format|
      if @program.update(program_params)
        format.html { redirect_to @program, program: @controller_name +t(:message_success_update)}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_program
    @program = Program.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def program_params
    params.require(:program).permit(:id,:title,program_content_attributes: [:id,:content])
  end
end
