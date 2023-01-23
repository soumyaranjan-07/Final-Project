class LessionsController < ApplicationController
  before_action :admin_loggedin?
  before_action :set_lession, only: %i[ show edit update destroy ]

  # GET /lessions or /lessions.json
  def index
    @lessions = Lession.all
  end

  # GET /lessions/1 or /lessions/1.json
  def show
  end

  # GET /lessions/new
  def new
    @lession = Lession.new
  end

  # GET /lessions/1/edit
  def edit
  end

  # POST /lessions or /lessions.json
  def create
    @lession = Lession.new(lession_params)

    respond_to do |format|
      if @lession.save
        format.html { redirect_to lession_url(@lession), notice: "Lession was successfully created." }
        format.json { render :show, status: :created, location: @lession }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessions/1 or /lessions/1.json
  def update
    respond_to do |format|
      if @lession.update(lession_params)
        format.html { redirect_to lession_url(@lession), notice: "Lession was successfully updated." }
        format.json { render :show, status: :ok, location: @lession }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessions/1 or /lessions/1.json
  def destroy
    @lession.destroy

    respond_to do |format|
      format.html { redirect_to lessions_url, notice: "Lession was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lession
      @lession = Lession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lession_params
      params.require(:lession).permit(:l_name, :l_desc,:lession_video, :course_id)
    end
    def admin_loggedin?
      if session[:admin].nil?
        flash[:notice]="Login as an admin to continue"
        redirect_to admin_login_url
      end
    end
end
