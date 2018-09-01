class RetadorsController < ApplicationController
  before_action :set_retador, only: [:show, :update, :destroy]

  # GET /retadors
  def index
    @retadors = Retador.all

    render json: @retadors
  end

  # GET /retadors/1
  def show
    render json: @retador
  end

  # POST /retadors
  def create
    @retador = Retador.new(retador_params)

    if @retador.save
      render json: @retador, status: :created, location: @retador
    else
      render json: @retador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /retadors/1
  def update
    if @retador.update(retador_params)
      render json: @retador
    else
      render json: @retador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /retadors/1
  def destroy
    @retador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retador
      @retador = Retador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def retador_params
      params.require(:retador).permit(:id, :id_Usuario, :direccion, :firmaDigital, :Presupuesto)
    end
end
