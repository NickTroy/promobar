class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

      session = ShopifyAPI::Session.new("https://teststore-1142.myshopify.com")
      @sess_val = session.valid?  # returns true


      ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")


  end
end
