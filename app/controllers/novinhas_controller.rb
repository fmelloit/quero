class NovinhasController < ApplicationController
  before_action :set_novinha, only: [:show, :edit, :update, :destroy]

  # GET /novinhas
  # GET /novinhas.json
  def index
    @novinhas = Novinha.all
  end

  # GET /novinhas/1
  # GET /novinhas/1.json
  def show
  end

  # GET /novinhas/new
  def new
    @novinha = Novinha.new
  end

  # GET /novinhas/1/edit
  def edit
  end

  # POST /novinhas
  # POST /novinhas.json
  def create
    @novinha = Novinha.new(novinha_params)

    respond_to do |format|
      if @novinha.save
        format.html { redirect_to @novinha, notice: 'Novinha was successfully created.' }
        format.json { render :show, status: :created, location: @novinha }
      else
        format.html { render :new }
        format.json { render json: @novinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novinhas/1
  # PATCH/PUT /novinhas/1.json
  def update
    respond_to do |format|
      if @novinha.update(novinha_params)
        format.html { redirect_to @novinha, notice: 'Novinha was successfully updated.' }
        format.json { render :show, status: :ok, location: @novinha }
      else
        format.html { render :edit }
        format.json { render json: @novinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novinhas/1
  # DELETE /novinhas/1.json
  def destroy
    @novinha.destroy
    respond_to do |format|
      format.html { redirect_to novinhas_url, notice: 'Novinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novinha
      @novinha = Novinha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novinha_params
      params.require(:novinha).permit(:nome, :data_picote, :nota)
    end
end
