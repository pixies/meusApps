class RegrasController < ApplicationController
  before_action :set_regra, only: [:show, :edit, :update, :destroy]

  # GET /regras
  # GET /regras.json
  def index
    @regras = Regra.all
  end

  # GET /regras/1
  # GET /regras/1.json
  def show
  end

  # GET /regras/new
  def new
    @regra = Regra.new
  end

  # GET /regras/1/edit
  def edit
  end

  # POST /regras
  # POST /regras.json
  def create
    @regra = Regra.new(regra_params)

    respond_to do |format|
      if @regra.save
        format.html { redirect_to @regra, notice: 'Regra was successfully created.' }
        format.json { render :show, status: :created, location: @regra }
      else
        format.html { render :new }
        format.json { render json: @regra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regras/1
  # PATCH/PUT /regras/1.json
  def update
    respond_to do |format|
      if @regra.update(regra_params)
        format.html { redirect_to @regra, notice: 'Regra was successfully updated.' }
        format.json { render :show, status: :ok, location: @regra }
      else
        format.html { render :edit }
        format.json { render json: @regra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regras/1
  # DELETE /regras/1.json
  def destroy
    @regra.destroy
    respond_to do |format|
      format.html { redirect_to regras_url, notice: 'Regra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regra
      @regra = Regra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regra_params
      params.require(:regra).permit(:regra, :descricao)
    end
end
