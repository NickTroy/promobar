class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all


      script = ShopifyAPI::ScriptTag.new
      script.event = "onload"
      script.src = script_promobars_url
      script.save

    # scripts = ShopifyAPI::ScriptTag.all

=begin
    scripts.each do |script|
      script.destroy
    end
=end

=begin
    if script.save
      @valid = 'true'
    else
      @valid = 'false'
    end
=end

    @sc = ShopifyAPI::ScriptTag.first

  end
end
