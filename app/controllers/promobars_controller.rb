class PromobarsController < ApplicationController
  before_action :set_promobar, only: [:edit, :update, :destroy]
  # before_action :define_promobars, only: [:manage]

=begin
  # GET /promobars/manage
  def manage
  end
=end

  # GET /promobars/edit
  def edit
  end

  # POST /promobars
  # POST /promobars.json
  def create
    @promobar = Promobar.new(promobar_params)

    respond_to do |format|
      if @promobar.save
        format.html { redirect_to manage_promobars_url, notice: 'Promobar was successfully created.' }
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
        format.html { redirect_to manage_promobars_url, notice: 'Promobar was successfully updated.' }
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

    #
    def define_promobars
      if Promobar.exists?(bar_type: 1)
        @header_promobar = Promobar.where(bar_type: 1).take
      else
        @header_promobar = Promobar.new
      end

      if Promobar.exists?(bar_type: 2)
        @footer_promobar = Promobar.where(bar_type: 2).take
      else
        @footer_promobar = Promobar.new
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promobar_params
      params.require(:promobar).permit(:type, :text, :font, :size, :tracking, :leading, :font_regular, :font_bold, :font_italic, :text_color, :background_color, :background_opacity)
    end
end
