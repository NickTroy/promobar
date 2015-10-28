class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    script = ShopifyAPI::ScriptTag.new
    script.event = "onload"
    script.src = "https://js-aplenty.com/foo.js"
    script.save


  end
end
