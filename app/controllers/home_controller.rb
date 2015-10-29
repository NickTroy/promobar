class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all


=begin
      script = ShopifyAPI::ScriptTag.new
      script.event = "onload"
      script.src = "https://js-aplenty.com/foo.js"
      script.save
=end
    scripts = ShopifyAPI::ScriptTag.all

    scripts.each do |script|
      script.destroy
    end

=begin
    if script.save
      @valid = 'true'
    else
      @valid = 'false'
    end
=end

    # @sc = ShopifyAPI::ScriptTag.first

  end
end
