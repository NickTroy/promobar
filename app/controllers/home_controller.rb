class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all

    # ShopifyAPI::Session.setup({:api_key => '1542338d97c3e62b5b1e0a8b3ab8c5a8', :secret => 'dd149cca1adf1ec3e7383c02ad8b1a2e'})

    #session = ShopifyAPI::Session.new(params[:shop])

    #if session.valid?
    #  @valid = 'true'

      # ShopifyAPI::Base.activate_session(session)
      # script = ShopifyAPI::ScriptTag.new
      # script.event = "onload"
      # script.src = "https://js-aplenty.com/foo.js"
    scripts = ShopifyAPI::ScriptTag.all

    scripts.each do |script|
      script.delete
    end
=begin
    if script.save
      @valid = 'true'
    else
      @valid = 'false'
    end
=end

    # @sc = ShopifyAPI::ScriptTag.first
    #else
    #  @valid = 'false'
    #end

=begin
    scope = ["write_script_tags"]
    permission_url = session.create_permission_url(scope)
    token = session.request_token(params)
    session = ShopifyAPI::Session.new(params[:shop], token)
    ShopifyAPI::Base.activate_session(session)
=end


  end
end
