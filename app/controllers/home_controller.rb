class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    script = ShopifyAPI::Script.new
    script.event = "onload"
    script.src = "https:\/\/djavaskripped.org\/fancy.js"
    script.save
  end
end
