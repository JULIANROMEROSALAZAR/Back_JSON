class AvancesController < ApplicationController
  before_action :set_avance, only: [:show, :update, :destroy]

  # GET /avances
  def index
    @avances = Avance.all

    render json: @avances
  end

  # GET /avances/1
  def show
    render json: @avance
  end

  # POST /avances
  def create
    @avance = Avance.new(avance_params)

    if @avance.save
      render json: @avance, status: :created, location: @avance
    else
      render json: @avance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /avances/1
  def update
    if @avance.update(avance_params)
      render json: @avance
    else
      render json: @avance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /avances/1
  def destroy
    @avance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avance
      @avance = Avance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def avance_params
      params.require(:avance).permit(:id, :id_Reto, :porcentaje, :evidencia, :adjunto)
    end
end
