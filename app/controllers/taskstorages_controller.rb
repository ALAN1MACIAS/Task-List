class TaskstoragesController < ApplicationController
  before_action :set_taskstorage, only: %i[ show edit update destroy ]

  # GET /taskstorages or /taskstorages.json
  def index
    @taskstorages = current_user.taskstorages.all
  end

  # GET /taskstorages/1 or /taskstorages/1.json
  def show
  end

  # GET /taskstorages/new
  def new
    @taskstorage = Taskstorage.new
  end

  # GET /taskstorages/1/edit
  def edit
  end

  # POST /taskstorages or /taskstorages.json
  def create
    @taskstorage = current_user.taskstorages.new(taskstorage_params)
    @taskstorage.user = current_user
    respond_to do |format|
      if @taskstorage.save
        format.html { redirect_to taskstorages_path, notice: "Taskstorage was successfully created." }
        format.json { render :show, status: :created, location: taskstorages_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: taskstorages_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskstorages/1 or /taskstorages/1.json
  def update
    respond_to do |format|
      if @taskstorage.update(taskstorage_params)
        format.html { redirect_to @taskstorage, notice: "Taskstorage was successfully updated." }
        format.json { render :show, status: :ok, location: @taskstorage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @taskstorage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskstorages/1 or /taskstorages/1.json
  def destroy
    @taskstorage.destroy
    respond_to do |format|
      format.html { redirect_to taskstorages_url, notice: "Taskstorage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskstorage
      @taskstorage = Taskstorage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taskstorage_params
      params.require(:taskstorage).permit(:title, :body, :sub_title)
    end
end
