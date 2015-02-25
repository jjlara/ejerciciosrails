class EjerciciosController < ApplicationController
  before_action :set_ejercicio, only: [:show, :edit, :update, :destroy]

  # GET /ejercicios
  # GET /ejercicios.json
  def index
    @ejercicios = Ejercicio.all
  end

  # GET /ejercicios/1
  # GET /ejercicios/1.json
  def show
  end

  # GET /ejercicios/new
  def new
    @ejercicio = Ejercicio.new
    5.times {@ejercicio.pregunta.build}
  end

  # GET /ejercicios/1/edit
  def edit
  end

  # POST /ejercicios
  # POST /ejercicios.json
  def create
    @ejercicio = Ejercicio.new(ejercicio_params)

    respond_to do |format|
      if @ejercicio.save
        format.html { redirect_to @ejercicio, notice: 'Ejercicio was successfully created.' }
        format.json { render :show, status: :created, location: @ejercicio }
      else
        format.html { render :new }
        format.json { render json: @ejercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejercicios/1
  # PATCH/PUT /ejercicios/1.json
  def update
    respond_to do |format|
      if @ejercicio.update(ejercicio_params)
        format.html { redirect_to @ejercicio, notice: 'Ejercicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @ejercicio }
      else
        format.html { render :edit }
        format.json { render json: @ejercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejercicios/1
  # DELETE /ejercicios/1.json
  def destroy
    @ejercicio.destroy
    respond_to do |format|
      format.html { redirect_to ejercicios_url, notice: 'Ejercicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ejercicio
      @ejercicio = Ejercicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ejercicio_params
      params.require(:ejercicio).permit(:nombre, pregunta_attributes: [:titulo])
    end
end
