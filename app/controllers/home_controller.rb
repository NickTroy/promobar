class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    # ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")


  end
end
