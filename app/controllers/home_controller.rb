class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    ShopifyAPI::ScriptTag.create({event: "onload", src: "https://s3.amazonaws.com/cocacola/scripttag_test.js";})
  end
end
