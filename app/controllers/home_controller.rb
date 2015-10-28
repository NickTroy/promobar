class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all


      sess = ShopifyAPI::Session.new(params[:shop], response[:credentials][:token])
      session[:shopify] = sess
      ShopifyAPI::Base.activate_session(sess)
      ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")


  end
end
