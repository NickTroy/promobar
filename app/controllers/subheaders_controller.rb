class SubheadersController < ApplicationController
  before_action :set_promobar, only: [:edit, :update] #, :destroy]

  def new
    @subheader = @promobar.subheaders.new
  end

  def edit

  end

  def create
    @subheader = @promobar.subheaders.create(params[:subheader])
  end

  def update
  end

  private
    def set_promobar
      @promobar = Promobar.find(params[:promobar_id])
    end
end
