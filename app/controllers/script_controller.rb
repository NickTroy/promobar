class ScriptController < ApplicationController

  def script
    
    headers['Content-Type'] = 'application/javascript'

    @header_promobars = Promobar.where(bar_type: 1).order(:order_number)
    @footer_promobars = Promobar.where(bar_type: 2).order(:order_number)
    @change_time = Promobar.all.first.change_time if Promobar.all.any?
    #render 'script', content_type: "application/javascript"
    respond_to do |format|
      format.js do
        headers['Content-Type'] = 'text/javascript'
        render :template => 'script/script.js.erb', :content_type => 'text/javascript'
      end
    end
  end
end
