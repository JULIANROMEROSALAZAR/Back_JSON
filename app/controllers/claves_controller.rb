class ClavesController < ApplicationController
  before_action :set_clafe, only: [:show, :update, :destroy]

  # GET /claves
  def index
    @claves = Clave.all

    render json: @claves
  end

  # GET /claves/1
  def show
    render json: @clafe
  end

  # POST /claves
  def create
    @clafe = Clave.new(clafe_params)

    if @clafe.save
      render json: @clafe, status: :created, location: @clafe
    else
      render json: @clafe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /claves/1
  def update
    if @clafe.update(clafe_params)
      render json: @clafe
    else
      render json: @clafe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /claves/1
  def destroy
    @clafe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clafe
      @clafe = Clave.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clafe_params
      params.require(:clafe).permit(:id, :id_Usuario, :clave, :fecha_Creacion)
    end
end
