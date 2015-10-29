class PromobarsController < AuthenticatedController
  before_action :set_promobar, only: [:edit, :update, :destroy]

  # GET /promobars/new
  def new
    @promobar = Promobar.new
    @promobar.background_opacity = 1
  end

  # GET /promobars/edit
  def edit
  end

  # POST /promobars
  # POST /promobars.json
  def create
    @promobar = Promobar.new(promobar_params)

    respond_to do |format|
      if @promobar.save
        format.html { redirect_to edit_promobar_url(@promobar), notice: 'Promobar was successfully created.' }
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
      if @promobar.update(promobar_params)
        format.html { redirect_to edit_promobar_url(@promobar), notice: 'Promobar was successfully updated.' }
        format.json { render :show, status: :ok, location: @promobar }
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
    respond_to do |format|
      format.js   { render :partial => 'script', :content_type => 'text/javascript' }
      # format.html { render :nothing => true }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promobar
      @promobar = Promobar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promobar_params
      params.require(:promobar).permit(:bar_type,:name, :text, :font, :size, :tracking, :leading, :font_regular, :font_bold,
                                       :font_italic, :text_color, :background_color, :background_opacity, :button_text,
                                       :button_shape, :button_color, :button_hover, :button_font, :button_font_size,
                                       :button_tracking, :button_leading, :button_font_regular, :button_font_bold, :button_font_italic,
                                       :button_text_color, :text_animation, :position, :alignment, :display_delay, :url_link, :url_link_blank, :enable_on_mobile)
    end
end
