class RetosController < ApplicationController
  before_action :set_reto, only: [:show, :update, :destroy]

  # GET /retos
  def index
    @retos = Reto.all

    render json: @retos
  end

  # GET /retos/1
  def show
    render json: @reto
  end

  # POST /retos
  def create
    @reto = Reto.new(reto_params)

    if @reto.save
      render json: @reto, status: :created, location: @reto
    else
      render json: @reto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /retos/1
  def update
    if @reto.update(reto_params)
      render json: @reto
    else
      render json: @reto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /retos/1
  def destroy
    @reto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reto
      @reto = Reto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reto_params
      params.require(:reto).permit(:id, :id_Retador, :descripcion, :id_Estado, :fecha_Creacion, :fecha_Finalizacion)
    end
end
