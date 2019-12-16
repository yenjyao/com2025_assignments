class OgsongsController < ApplicationController
  before_action :set_ogsong, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /ogsongs
  # GET /ogsongs.json
  def index
    @ogsongs = Ogsong.all
  end

  # GET /ogsongs/1
  # GET /ogsongs/1.json
  def show
  end

  # GET /ogsongs/new
  def new
    @ogsong = Ogsong.new
  end

  # GET /ogsongs/1/edit
  def edit
  end

  # POST /ogsongs
  # POST /ogsongs.json
  def create
    @ogsong = Ogsong.new(ogsong_params)

    respond_to do |format|
      #if ogsong created successfully, show notice
      if @ogsong.save
        format.html { redirect_to @ogsong, notice: 'Ogsong was successfully created.' }
        format.json { render :show, status: :created, location: @ogsong }
      else
        format.html { render :new }
        format.json { render json: @ogsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ogsongs/1
  # PATCH/PUT /ogsongs/1.json
  def update
    respond_to do |format|
      if @ogsong.update(ogsong_params)
        #if ogsong updated successfull, show notice
        format.html { redirect_to @ogsong, notice: 'Ogsong was successfully updated.' }
        format.json { render :show, status: :ok, location: @ogsong }
      else
        format.html { render :edit }
        format.json { render json: @ogsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ogsongs/1
  # DELETE /ogsongs/1.json
  def destroy
    @ogsong.destroy
    respond_to do |format|
      format.html { redirect_to ogsongs_url, notice: 'Ogsong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ogsong
      @ogsong = Ogsong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ogsong_params
      params.require(:ogsong).permit(:title, :artist, :lyrics)
    end
end
