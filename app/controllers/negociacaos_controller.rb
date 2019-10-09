class NegociacaosController < ApplicationController
  before_action :set_negociacao, only: [:show, :edit, :update, :destroy]

  # GET /negociacaos
  # GET /negociacaos.json
  def index
    @negociacaos = Negociacao.all
  end

  # GET /negociacaos/1
  # GET /negociacaos/1.json
  def show
  end

  # GET /negociacaos/new
  def new
    @negociacao = Negociacao.new
  end

  # GET /negociacaos/1/edit
  def edit
  end

  # POST /negociacaos
  # POST /negociacaos.json
  def create
    @negociacao = Negociacao.new(negociacao_params)

    respond_to do |format|
      if @negociacao.save
        format.html { redirect_to @negociacao, notice: 'Negociacao was successfully created.' }
        format.json { render :show, status: :created, location: @negociacao }
      else
        format.html { render :new }
        format.json { render json: @negociacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negociacaos/1
  # PATCH/PUT /negociacaos/1.json
  def update
    respond_to do |format|
      if @negociacao.update(negociacao_params)
        format.html { redirect_to @negociacao, notice: 'Negociacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @negociacao }
      else
        format.html { render :edit }
        format.json { render json: @negociacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negociacaos/1
  # DELETE /negociacaos/1.json
  def destroy
    @negociacao.destroy
    respond_to do |format|
      format.html { redirect_to negociacaos_url, notice: 'Negociacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negociacao
      @negociacao = Negociacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def negociacao_params
      params.require(:negociacao).permit(:salario_combinado, :status_negociacao)
    end
end
