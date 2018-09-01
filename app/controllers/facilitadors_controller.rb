class FacilitadorsController < ApplicationController
  before_action :set_facilitador, only: [:show, :update, :destroy]

  # GET /facilitadors
  def index
    @facilitadors = Facilitador.all

    render json: @facilitadors
  end

  # GET /facilitadors/1
  def show
    render json: @facilitador
  end

  # POST /facilitadors
  def create
    @facilitador = Facilitador.new(facilitador_params)

    if @facilitador.save
      render json: @facilitador, status: :created, location: @facilitador
    else
      render json: @facilitador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facilitadors/1
  def update
    if @facilitador.update(facilitador_params)
      render json: @facilitador
    else
      render json: @facilitador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facilitadors/1
  def destroy
    @facilitador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facilitador
      @facilitador = Facilitador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def facilitador_params
      params.require(:facilitador).permit(:id, :id_Usuario, :id_Universidad, :direccion, :firmaDigital)
    end
end
