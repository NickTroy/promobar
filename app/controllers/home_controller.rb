class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    scripts = ShopifyAPI::ScriptTag.all
    @counter = scripts.count
    unless scripts.any?
      script = ShopifyAPI::ScriptTag.new
      script.event = "onload"
      script.src = script_promobars_url
      script.save
      
      @counter = '1'
    end


    @sc = ShopifyAPI::ScriptTag.first || 'No scripts detected'

  end
end
