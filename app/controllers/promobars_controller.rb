class PromobarsController < ApplicationController
  before_action :set_promobar, only: [:update, :destroy]

  # GET /promobars/new
  def new
      @header_promobar = Promobar.new
      @footer_promobar = Promobar.new
  end

  # GET /promobars/edit
  def edit
  end

  # GET /promobars/manage
  def manage
    if Promobar.where(type: 1).nil?
      @header_promobar = Promobar.new
    else
      @header_promobar = Promobar.where(type: 1).first
    end

    if Promobar.where(type: 2).nil?
      @header_promobar = Promobar.new
    else
      @header_promobar = Promobar.where(type: 2).first
    end
  end

  # POST /promobars
  # POST /promobars.json
  def create
    @promobar = Promobar.new(promobar_params)

    respond_to do |format|
      if @promobar.save
        format.html { redirect_to root_url, notice: 'Promobar was successfully created.' }
        format.json { render :show, status: :created, location: @promobar }
      else
        format.html { render :new }
        format.json { render json: @promobar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promobars/1
  # PATCH/PUT /promobars/1.json
  def update
    respond_to do |format|
      if @promobar.update(promobar_params)
        format.html { redirect_to root_url, notice: 'Promobar was successfully updated.' }
        format.json { render :show, status: :ok, location: @promobar }
      else
        format.html { render :edit }
        format.json { render json: @promobar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promobars/1
  # DELETE /promobars/1.json
  def destroy
    @promobar.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Promobar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promobar
      @promobar = Promobar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promobar_params
      params.require(:promobar).permit(:bar_type, :bar_text, :bar_font, :bar_font_size, :bar_tracking, :bar_leading, :bar_font_regular, :bar_font_bold, :bar_font_italic, :bar_text_color, :bar_background_color, :bar_background_opacity)
    end
end
