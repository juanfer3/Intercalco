class TotalesFormulaController < ApplicationController
  before_action :set_total_formula, only: [:show, :edit, :update, :destroy]

  # GET /totales_formula
  # GET /totales_formula.json
  def index
    @totales_formula = TotalFormula.all
  end

  # GET /totales_formula/1
  # GET /totales_formula/1.json
  def show
  end

  # GET /totales_formula/new
  def new
    @total_formula = TotalFormula.new
  end

  # GET /totales_formula/1/edit
  def edit
  end

  # POST /totales_formula
  # POST /totales_formula.json
  def create
    @total_formula = TotalFormula.new(total_formula_params)

    respond_to do |format|
      if @total_formula.save
        format.html { redirect_to @total_formula, notice: 'Total formula was successfully created.' }
        format.json { render :show, status: :created, location: @total_formula }
      else
        format.html { render :new }
        format.json { render json: @total_formula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /totales_formula/1
  # PATCH/PUT /totales_formula/1.json
  def update
    respond_to do |format|
      if @total_formula.update(total_formula_params)
        format.html { redirect_to @total_formula, notice: 'Total formula was successfully updated.' }
        format.json { render :show, status: :ok, location: @total_formula }
      else
        format.html { render :edit }
        format.json { render json: @total_formula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /totales_formula/1
  # DELETE /totales_formula/1.json
  def destroy
    @total_formula.destroy
    respond_to do |format|
      format.html { redirect_to totales_formula_url, notice: 'Total formula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_total_formula
      @total_formula = TotalFormula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def total_formula_params
      params.require(:total_formula).permit(:formula_tinta_id, :total, :estado)
    end
end
