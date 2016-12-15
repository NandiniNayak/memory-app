class MemoryChecksController < ApplicationController
  before_action :set_memory_check, only: [:show, :edit, :update, :destroy]

  # GET /memory_checks
  # GET /memory_checks.json
  def index
    @memory_checks = MemoryCheck.all
  end

  # GET /memory_checks/1
  # GET /memory_checks/1.json
  def show
  end

  # GET /memory_checks/new
  def new
    @memory_check = MemoryCheck.new
  end

  # GET /memory_checks/1/edit
  def edit
  end

  # POST /memory_checks
  # POST /memory_checks.json
  def create
    @memory_check = MemoryCheck.new(memory_check_params)
    @memory_check.user_id = current_user.id

    respond_to do |format|
      if @memory_check.save
        format.html { redirect_to @memory_check, notice: 'Memory check was successfully created.' }
        format.json { render :show, status: :created, location: @memory_check }
      else
        format.html { render :new }
        format.json { render json: @memory_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memory_checks/1
  # PATCH/PUT /memory_checks/1.json
  def update
    respond_to do |format|
      if @memory_check.update(memory_check_params)
        format.html { redirect_to @memory_check, notice: 'Memory check was successfully updated.' }
        format.json { render :show, status: :ok, location: @memory_check }
      else
        format.html { render :edit }
        format.json { render json: @memory_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memory_checks/1
  # DELETE /memory_checks/1.json
  def destroy
    @memory_check.destroy
    respond_to do |format|
      format.html { redirect_to memory_checks_url, notice: 'Memory check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory_check
      @memory_check = MemoryCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memory_check_params
      params.require(:memory_check).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :user_id, :score)
    end
end
