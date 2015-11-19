class PromobarsController < AuthenticatedController
  before_action :set_promobar, only: [:edit, :update, :destroy]

  # GET /promobars/new
  def new
    @promobar = Promobar.new
    @subheader = @promobar.create_subheader
    @promobar.background_opacity = 1
    @subheader.background_opacity = 1
  end

  # GET /promobars/edit
  def edit
    @subheader = @promobar.subheader || @promobar.create_subheader
  end

  # POST /promobars
  # POST /promobars.json
  def create
    @promobar = Promobar.new(promobar_params)
    @promobar.promobar_show = true

    @subheader = @promobar.subheader_create

    respond_to do |format|
      if @promobar.save 
        format.html { redirect_to root_url, notice: 'Promobar was successfully created.' }
        format.json { render :show, status: :created, location: @promobar }
      else
        flash[:error] = @promobar.errors.full_messages
        format.html { redirect_to :back }
        format.json { render json: @promobar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promobars/1
  # PATCH/PUT /promobars/1.json
  def update
    respond_to do |format|
      if params[:commit] == 'Display'
        @promobar.update_attribute("promobar_show", true)
      elsif params[:commit] == 'Hide'
        @promobar.update_attribute("promobar_show", false)
      elsif params[:commit] == 'Back'
        format.html { redirect_to root_url }
      end

      @subheader = @promobar.subheader 

      if @promobar.update_attributes(promobar_params) 
        format.html { redirect_to root_url, notice: 'Promobar was successfully updated.' }
        format.json { redirect_to root_url, status: :ok, location: @promobar }
      else
        flash[:error] = @promobar.errors.full_messages
        format.html { redirect_to :back }
        format.json { render json: @promobar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promobars/1
  # DELETE /promobars/1.json
  def destroy
    @promobar.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Promobar was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  # GET /promobars/script
  def script
    @header_promobars = Promobar.where(bar_type: 1)
    @footer_promobars = Promobar.where(bar_type: 2)
    
    respond_to do |format|
      format.js  {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promobar
      @promobar = Promobar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promobar_params
      params.require(:promobar).permit(:bar_type,:name, :text, :background_color, :background_opacity, :promobar_show, :button_on, :button_text,
                                       :button_shape, :button_color, :button_hover, :text_animation, :alignment, :url_link, :url_link_blank, :enable_on_mobile)
    end
    

end
