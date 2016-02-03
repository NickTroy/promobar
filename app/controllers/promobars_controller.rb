class PromobarsController < AuthenticatedController
  before_action :set_promobar, only: [:edit, :update, :destroy]
  before_action :set_js_content_type, only: [:script]
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
    if params[:commit] == 'Back'
      redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain])
      return
    end
    @promobar = Promobar.new(promobar_params)
    @promobar.promobar_show = true
    @promobar.shop_domain = params[:shop_domain]
    @store_promobars = Promobar.where(:shop_domain => params[:shop_domain])
    if (@store_promobars.any?) and (promobar_params[:change_time].nil? or promobar_params[:change_time] == "")
      @promobar.change_time = @store_promobars.first.change_time
    else
      @store_promobars.all.each do |bar| 
        bar.update_attributes(:change_time => promobar_params[:change_time])
      end
    end
    if promobar_params[:height].nil?
      @promobar.update_attributes(:height => '1')
    end
    respond_to do |format|
      if @promobar.save 
        format.html { redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain]), notice: 'Promobar was successfully created.' }
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
        format.html { redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain]) }
      end

      @subheader = @promobar.subheader 
      @store_promobars = Promobar.where(:shop_domain => params[:shop_domain])
      unless @store_promobars.empty? and promobar_params[:change_time] != "" and promobar_params[:change_time] != nil
        @store_promobars.each do |bar|
          bar.update_attributes(:change_time => promobar_params[:change_time])
        end
      end
      if @promobar.update_attributes(promobar_params) 
        format.html { redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain]), notice: 'Promobar was successfully updated.' }
        format.json { redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain]), location: @promobar, notice: 'Promobar was successfully updated.' }
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
      format.html { redirect_to root_url(:protocol => 'https', :shop => params[:shop_domain]), notice: 'Promobar was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  # GET /promobars/script
  def script
#    headers['Content-Type'] = 'application/javascript'

    @header_promobars = Promobar.where(bar_type: 1)
    @footer_promobars = Promobar.where(bar_type: 2)

#    render 'script', content_type: "application/javascript"
    respond_to do |format|
      format.js do
        headers['Content-Type'] = 'text/javascript'
        render :template => "promobars/script.js.erb", :content_type => 'text/javascript'
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promobar
      @promobar = Promobar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promobar_params
      params.require(:promobar).permit(:bar_type,:name, :text, :background_color, :background_opacity, :promobar_show, :button_on, :button_text, :x_button_on, :order_number,
                                       :button_shape, :button_color, :button_hover, :text_animation, :alignment, :url_link, :url_link_blank, :enable_on_mobile, :change_time, :height, :promobar_link, :promobar_link_blank)
    end

    def set_js_content_type
      headers['Content-Type'] = 'text/javascript' 
    end
    

end
