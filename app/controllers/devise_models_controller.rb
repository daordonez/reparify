class DeviseModelsController < ApplicationController
  before_action :set_devise_model, only: [:show, :edit, :update, :destroy]

  # GET /devise_models
  # GET /devise_models.json
  def index
    @devise_models = DeviseModel.all
  end

  # GET /devise_models/1
  # GET /devise_models/1.json
  def show
  end

  # GET /devise_models/new
  def new
    @devise_model = DeviseModel.new
  end

  # GET /devise_models/1/edit
  def edit
  end

  # POST /devise_models
  # POST /devise_models.json
  def create
    @devise_model = DeviseModel.new(devise_model_params)

    respond_to do |format|
      if @devise_model.save
        format.html { redirect_to @devise_model, notice: 'Devise model was successfully created.' }
        format.json { render :show, status: :created, location: @devise_model }
      else
        format.html { render :new }
        format.json { render json: @devise_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devise_models/1
  # PATCH/PUT /devise_models/1.json
  def update
    respond_to do |format|
      if @devise_model.update(devise_model_params)
        format.html { redirect_to @devise_model, notice: 'Devise model was successfully updated.' }
        format.json { render :show, status: :ok, location: @devise_model }
      else
        format.html { render :edit }
        format.json { render json: @devise_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devise_models/1
  # DELETE /devise_models/1.json
  def destroy
    @devise_model.destroy
    respond_to do |format|
      format.html { redirect_to devise_models_url, notice: 'Devise model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devise_model
      @devise_model = DeviseModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devise_model_params
      params.require(:devise_model).permit(:nombrecomercial_modelo, :manufacturer_id, devise_model_attributes:[:id,:nombreComun_parte,:precio_parte,:_destroy])
    end
end
