class FacultadsController < ApplicationController
  before_action :set_facultad, only: [:show, :update, :destroy]

  # GET /facultads
  def index
    @facultads = Facultad.all

    render json: @facultads
  end

  # GET /facultads/1
  def show
    render json: @facultad
  end

  # POST /facultads
  def create
    @facultad = Facultad.new(facultad_params)

    if @facultad.save
      render json: @facultad, status: :created, location: @facultad
    else
      render json: @facultad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facultads/1
  def update
    if @facultad.update(facultad_params)
      render json: @facultad
    else
      render json: @facultad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facultads/1
  def destroy
    @facultad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facultad
      @facultad = Facultad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def facultad_params
      params.require(:facultad).permit(:id, :id_Universidad, :descripcion)
    end
end
