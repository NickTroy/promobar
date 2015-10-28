class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    ShopifyAPI::ScriptTag.create({:src => "http://your-url.com/script.js", :event => 'onload'})
  end
end
