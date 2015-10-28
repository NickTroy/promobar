class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    @scripts = ShopifyAPI::Script.all
  end
end
