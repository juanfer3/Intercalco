class LineasTintaController < ApplicationController
  before_action :set_linea_tinta, only: [:show, :edit, :update, :destroy]

  # GET /lineas_tinta
  # GET /lineas_tinta.json
  def index
    @lineas_tinta = LineaTinta.all
  end

  # GET /lineas_tinta/1
  # GET /lineas_tinta/1.json
  def show
  end

  # GET /lineas_tinta/new
  def new
    @linea_tinta = LineaTinta.new
  end

  # GET /lineas_tinta/1/edit
  def edit
  end

  # POST /lineas_tinta
  # POST /lineas_tinta.json
  def create
    @linea_tinta = LineaTinta.new(linea_tinta_params)

    respond_to do |format|
      if @linea_tinta.save
        format.html { redirect_to @linea_tinta, notice: 'Linea tinta was successfully created.' }
        format.json { render :show, status: :created, location: @linea_tinta }
      else
        format.html { render :new }
        format.json { render json: @linea_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineas_tinta/1
  # PATCH/PUT /lineas_tinta/1.json
  def update
    respond_to do |format|
      if @linea_tinta.update(linea_tinta_params)
        format.html { redirect_to @linea_tinta, notice: 'Linea tinta was successfully updated.' }
        format.json { render :show, status: :ok, location: @linea_tinta }
      else
        format.html { render :edit }
        format.json { render json: @linea_tinta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineas_tinta/1
  # DELETE /lineas_tinta/1.json
  def destroy
    @linea_tinta.destroy
    respond_to do |format|
      format.html { redirect_to lineas_tinta_url, notice: 'Linea tinta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linea_tinta
      @linea_tinta = LineaTinta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linea_tinta_params
      params.require(:linea_tinta).permit(:tipo_de_linea, :caracteristica, :estado)
    end
end
