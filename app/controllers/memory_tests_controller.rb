class MemoryTestsController < ApplicationController
  before_action :set_memory_test, only: [:show, :edit, :update, :destroy]

  # GET /memory_tests
  # GET /memory_tests.json
  def index
    @memory_tests = MemoryTest.all
  end

  # GET /memory_tests/1
  # GET /memory_tests/1.json
  def show
  end

  # GET /memory_tests/new
  def new
    @memory_test = MemoryTest.new
  end

  # GET /memory_tests/1/edit
  def edit
  end

  # POST /memory_tests
  # POST /memory_tests.json
  def create
    @memory_test = MemoryTest.new(memory_test_params)
    @memory_test.user = current_user

    respond_to do |format|
      if @memory_test.save
        format.html { redirect_to @memory_test, notice: 'Memory test was successfully created.' }
        format.json { render :show, status: :created, location: @memory_test }
      else
        format.html { render :new }
        format.json { render json: @memory_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memory_tests/1
  # PATCH/PUT /memory_tests/1.json
  def update
    respond_to do |format|
      if @memory_test.update(memory_test_params)
        format.html { redirect_to @memory_test, notice: 'Memory test was successfully updated.' }
        format.json { render :show, status: :ok, location: @memory_test }
      else
        format.html { render :edit }
        format.json { render json: @memory_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memory_tests/1
  # DELETE /memory_tests/1.json
  def destroy
    @memory_test.destroy
    respond_to do |format|
      format.html { redirect_to memory_tests_url, notice: 'Memory test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory_test
      @memory_test = MemoryTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memory_test_params
      params.require(:memory_test).permit(:qName, :qBirthday, :qSuburb, :qPet, :qSchool, :qJob, :qGrandchildren, :user_id, :score)
    end
end
