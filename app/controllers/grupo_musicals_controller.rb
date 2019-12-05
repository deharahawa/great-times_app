class GrupoMusicalsController < ApplicationController
  before_action :set_grupo_musical, only: [:show, :edit, :update, :destroy]

  # GET /grupo_musicals
  # GET /grupo_musicals.json
  def index
    @grupo_musicals = GrupoMusical.all
  end

  def search 
    @grupo_musicals = GrupoMusical.where("nome LIKE ?", "%" + params[:nome] + "%")
  end

  def login 
    loginMessage
  end

  def loginMessage
    exist = GrupoMusical.find_by(email: params[:email], senha: params[:senha])
    if exist
      session[:user_id] = exist.id
      redirect_to "/", notice: "Logado com sucesso."
    else
      redirect_to "/", alert: "Falha de login."
    end
  end

  # GET /grupo_musicals/1
  # GET /grupo_musicals/1.json
  def show
  end

  # GET /grupo_musicals/new
  def new
    @grupo_musical = GrupoMusical.new
  end

  # GET /grupo_musicals/1/edit
  def edit
  end

  # POST /grupo_musicals
  # POST /grupo_musicals.json
  def create
    @grupo_musical = GrupoMusical.new(grupo_musical_params)

    respond_to do |format|
      if @grupo_musical.save
        format.html { redirect_to @grupo_musical, notice: 'Grupo musical was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_musical }
      else
        format.html { render :new }
        format.json { render json: @grupo_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_musicals/1
  # PATCH/PUT /grupo_musicals/1.json
  def update
    respond_to do |format|
      if @grupo_musical.update(grupo_musical_params)
        format.html { redirect_to @grupo_musical, notice: 'Grupo musical was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_musical }
      else
        format.html { render :edit }
        format.json { render json: @grupo_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_musicals/1
  # DELETE /grupo_musicals/1.json
  def destroy
    @grupo_musical.destroy
    respond_to do |format|
      format.html { redirect_to grupo_musicals_url, notice: 'Grupo musical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_musical
      @grupo_musical = GrupoMusical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_musical_params
      params.require(:grupo_musical).permit(:nome, :sobrenome, :nome_artistico, :email, :senha, :data_nascimento, :endereco, :numero, :cep, :cidade, :estado, :pais, :telefone, :biografia, :salario_hora, :imagens, :video, :cpf, :pontos)
    end
end
