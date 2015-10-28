class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    ShopifyAPI::Session.setup({:api_key => ShopifyApp.config.api_key, :secret => ShopifyApp.config.secret})
    session = ShopifyAPI::Session.new(params[:shop])
    scope = ["write_script_tags"]
    permission_url = session.create_permission_url(scope)
    token = session.request_token(params)
    session = ShopifyAPI::Session.new(params[:shop], token)
    ShopifyAPI::Base.activate_session(session)
    
    script = ShopifyAPI::ScriptTag.new
    script.event = "onload"
    script.src = "https://js-aplenty.com/foo.js"
    script.save


  end
end
