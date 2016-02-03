class ScriptController < ApplicationController

  def script
    
    headers['Content-Type'] = 'application/javascript'
    @store_promobars = Promobar.where(:shop_domain => params[:shop])
    @header_promobars = @store_promobars.where(bar_type: 1).order('order_number DESC' )
    @footer_promobars = @store_promobars.where(bar_type: 2).order('order_number DESC')
    @change_time = @store_promobars.all.first.change_time if @store_promobars.any?
    @change_time ||= 1000
    #render 'script', content_type: "application/javascript"
    respond_to do |format|
      format.js do
        headers['Content-Type'] = 'text/javascript'
        render :template => 'script/script.js.erb', :content_type => 'text/javascript'
      end
    end
  end
end
