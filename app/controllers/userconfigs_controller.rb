class UserconfigsController < ApplicationController
  before_action :set_userconfig, only: %i[ show edit update destroy]
  before_action :set_action_new_update, only: %i[new_update]

  # GET /userconfigs or /userconfigs.json
  def index
    @userconfigs = Userconfig.all
  end

  # GET /userconfigs/1 or /userconfigs/1.json
  def show
  end

  # GET /userconfigs/new
  def new
    @userconfig = Userconfig.new
  end

  def new_update
    
  end

  # GET /userconfigs/1/edit
  def edit
  end

  # POST /userconfigs or /userconfigs.json
  def create
    # No permite registrar nada si el usuario ya creo su configuración
    @userconfig = current_user.build_userconfig(userconfig_params) unless current_user.userconfig

    respond_to do |format|
      if !@userconfig.nil? and @userconfig.save
        format.html { redirect_to taskstorages_path, notice: "Userconfig was successfully created." }
        format.json { render :show, status: :created, location: taskstorages_path }
      else
        @userconfig = Userconfig.new
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: taskstorages_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userconfigs/1 or /userconfigs/1.json
  def update
    respond_to do |format|
      if @userconfig.update(userconfig_params)
        format.html { redirect_to taskstorages_path, notice: "Userconfig was successfully updated." }
        format.json { render :show, status: :ok, location: taskstorages_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: taskstorages_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userconfigs/1 or /userconfigs/1.json
  def destroy
    @userconfig.destroy
    respond_to do |format|
      format.html { redirect_to userconfigs_url, notice: "Userconfig was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userconfig
      @userconfig = Userconfig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userconfig_params
      params.require(:userconfig).permit(:nombre, :apellidop, :apellidom, :descripcion)
    end

    def set_action_new_update
      user = Userconfig.where(user_id: params[:id])
      if current_user.userconfig
        user.each { |val| redirect_to edit_userconfig_path(val.id) }
      else
        redirect_to new_userconfig_path
      end
    end
end
