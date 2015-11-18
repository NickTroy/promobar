class SubheadersController < ApplicationController
  before_action :set_promobar, only: [:edit, :update] #, :destroy]

  def new
    @subheader = @promobar.subheader.new
  end

  def edit
    
  end

  def create
    @subheader = @promobar.subheader.create(params[:subheader])
    if @subheader.save
      render 'promobar/edit'
    end
  end

  def update
  end

  private
    def set_promobar
      @promobar = Promobar.find(params[:promobar_id])
    end

    def subheader_params
      params.require(:promobar).permit(:bar_type,:name, :text, :background_color, :background_opacity, :promobar_show, :button_on, :button_text,
                                       :button_shape, :button_color, :button_hover, :text_animation, :alignment, :url_link, :url_link_blank, :enable_on_mobile)
    end
end
