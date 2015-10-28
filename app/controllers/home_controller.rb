class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all


      session = ShopifyAPI::Session.new(ShopifyAPI::Shop.current.attributes[:domain].to_s)
      ShopifyAPI::Base.activate_session(session)
      ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")


  end
end
