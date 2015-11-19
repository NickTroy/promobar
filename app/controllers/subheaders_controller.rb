class SubheadersController < ApplicationController
  before_action :set_promobar, only: [:edit, :update] #, :destroy]

  def new
    @promobar = Promobar.new
    @subheader = @promobar.create_subheader
  end

  def edit
    
  end

  def create
    @subheader = @promobar.create_subheader(subheader_params)
    if @subheader.save
      redirect_to root_url
    end
  end

  def update
    @subheader = @promobar.subheader
    @subheader.update_attributes(subheader_params)
    if @subheader.save
      redirect_to root_url
    end
  end

  private
    def set_promobar
      @promobar = Promobar.find(params[:promobar_id])
    end

    def subheader_params
      params.require(:subheader).permit(:bar_type,:name, :text, :background_color, :background_opacity, :promobar_show, :button_on, :button_text,
                                       :button_shape, :button_color, :button_hover, :text_animation, :alignment, :url_link, :url_link_blank, :enable_on_mobile)
    end
end
