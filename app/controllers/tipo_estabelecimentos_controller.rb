class TipoEstabelecimentosController < ApplicationController
  before_action :set_tipo_estabelecimento, only: [:show, :edit, :update, :destroy]

  # GET /tipo_estabelecimentos
  # GET /tipo_estabelecimentos.json
  def index
    @tipo_estabelecimentos = TipoEstabelecimento.all
  end

  # GET /tipo_estabelecimentos/1
  # GET /tipo_estabelecimentos/1.json
  def show
  end

  # GET /tipo_estabelecimentos/new
  def new
    @tipo_estabelecimento = TipoEstabelecimento.new
  end

  # GET /tipo_estabelecimentos/1/edit
  def edit
  end

  # POST /tipo_estabelecimentos
  # POST /tipo_estabelecimentos.json
  def create
    @tipo_estabelecimento = TipoEstabelecimento.new(tipo_estabelecimento_params)

    respond_to do |format|
      if @tipo_estabelecimento.save
        format.html { redirect_to @tipo_estabelecimento, notice: 'Tipo estabelecimento was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_estabelecimento }
      else
        format.html { render :new }
        format.json { render json: @tipo_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_estabelecimentos/1
  # PATCH/PUT /tipo_estabelecimentos/1.json
  def update
    respond_to do |format|
      if @tipo_estabelecimento.update(tipo_estabelecimento_params)
        format.html { redirect_to @tipo_estabelecimento, notice: 'Tipo estabelecimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_estabelecimento }
      else
        format.html { render :edit }
        format.json { render json: @tipo_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_estabelecimentos/1
  # DELETE /tipo_estabelecimentos/1.json
  def destroy
    @tipo_estabelecimento.destroy
    respond_to do |format|
      format.html { redirect_to tipo_estabelecimentos_url, notice: 'Tipo estabelecimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_estabelecimento
      @tipo_estabelecimento = TipoEstabelecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_estabelecimento_params
      params.require(:tipo_estabelecimento).permit(:nome_tipo)
    end
end
