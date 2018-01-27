class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy]

  def index
    @ads = Ad.all
  end


  def show
  end


  def new
    @ad = Ad.new
  end


  def edit
  end

  def create
    @ad = Ad.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to url_for(:controller => :pages, :action => :admin), notice: 'Ad was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to url_for(:controller => :pages, :action => :admin), notice: 'Ad was successfully created.' }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render :edit }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to url_for(:controller => :pages, :action => :admin), notice: 'Ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_params
      params.require(:ad).permit(:title, :description, :content)
    end
end
