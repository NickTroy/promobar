class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    scripts = ShopifyAPI::ScriptTag.all
    unless scripts.any?
      script = ShopifyAPI::ScriptTag.new
      script.event = "onload"
      script.src = script_promobars_url
      script.save
    end
    
    @counter = scripts.count
    @sc = ShopifyAPI::ScriptTag.first || 'No scripts detected'

  end
end
