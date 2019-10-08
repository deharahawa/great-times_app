class RedesController < ApplicationController
  before_action :set_rede, only: [:show, :edit, :update, :destroy]

  # GET /redes
  # GET /redes.json
  def index
    @redes = Rede.all
  end

  # GET /redes/1
  # GET /redes/1.json
  def show
  end

  # GET /redes/new
  def new
    @rede = Rede.new
  end

  # GET /redes/1/edit
  def edit
  end

  # POST /redes
  # POST /redes.json
  def create
    @rede = Rede.new(rede_params)

    respond_to do |format|
      if @rede.save
        format.html { redirect_to @rede, notice: 'Rede was successfully created.' }
        format.json { render :show, status: :created, location: @rede }
      else
        format.html { render :new }
        format.json { render json: @rede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redes/1
  # PATCH/PUT /redes/1.json
  def update
    respond_to do |format|
      if @rede.update(rede_params)
        format.html { redirect_to @rede, notice: 'Rede was successfully updated.' }
        format.json { render :show, status: :ok, location: @rede }
      else
        format.html { render :edit }
        format.json { render json: @rede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redes/1
  # DELETE /redes/1.json
  def destroy
    @rede.destroy
    respond_to do |format|
      format.html { redirect_to redes_url, notice: 'Rede was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rede
      @rede = Rede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rede_params
      params.require(:rede).permit(:nome_rede)
    end
end
