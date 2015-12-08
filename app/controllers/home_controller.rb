class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all
    @headers = Promobar.where(bar_type: 1)
    @footers = Promobar.where(bar_type: 1)
    
    @headers.each_with_index do |header, i|
      header.order_number = i+1
      header.save
    end
    
    @footers.each_with_index do |footer, i|
      footer.order_number = i+1
      footer.save
    end
    
    scripts = ShopifyAPI::ScriptTag.all
    @counter = scripts.count

    if @promobars.any?
      unless scripts.any?
        script = ShopifyAPI::ScriptTag.new
        script.event = "onload"
        script.src = script_promobars_url+'.js'
        script.save

        @counter = '1'
      end
    end


    @sc = ShopifyAPI::ScriptTag.first || 'No scripts detected'

  end
end
