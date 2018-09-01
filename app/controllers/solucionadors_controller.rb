class SolucionadorsController < ApplicationController
  before_action :set_solucionador, only: [:show, :update, :destroy]

  # GET /solucionadors
  def index
    @solucionadors = Solucionador.all

    render json: @solucionadors
  end

  # GET /solucionadors/1
  def show
    render json: @solucionador
  end

  # POST /solucionadors
  def create
    @solucionador = Solucionador.new(solucionador_params)

    if @solucionador.save
      render json: @solucionador, status: :created, location: @solucionador
    else
      render json: @solucionador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solucionadors/1
  def update
    if @solucionador.update(solucionador_params)
      render json: @solucionador
    else
      render json: @solucionador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solucionadors/1
  def destroy
    @solucionador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solucionador
      @solucionador = Solucionador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solucionador_params
      params.require(:solucionador).permit(:id, :id_Reto, :id_Universidad, :id_Facultad, :id_Usuario)
    end
end
