class SubheadersController < ApplicationController
  before_action :set_promobar, only: [:edit, :update] #, :destroy]

  def new
    @promobar = Promobar.new
    @subheader = @promobar.create_subheader
  end

  def edit
    
  end

  def create
    @promobar = Promobar.new({:id => params[:promobar_id]})
    @subheader = @promobar.subheader_create
    if @subheader.save
      redirect_to root_url
    end
  end

  def update
    respond_to do |format|
      @subheader = @promobar.subheader
      @subheader.update_attributes(subheader_params)
      
      if @subheader.save
        format.html { redirect_to root_url( :protocol => 'https', :shop => @promobar.shop_domain) }
        format.json { redirect_to root_url, status: :ok }
      end
    end
  end

  private
    def set_promobar
      @promobar = Promobar.find(params[:promobar_id])
    end

    def subheader_params
      params.require(:subheader).permit(:bar_type,:name, :text, :background_color, :background_opacity, :promobar_show, :button_on, :button_text, :x_button_on, 
                                       :button_shape, :button_color, :button_hover, :text_animation, :alignment, :url_link, :url_link_blank, :enable_on_mobile, :subheader_link, :subheader_link_blank)
    end

end
