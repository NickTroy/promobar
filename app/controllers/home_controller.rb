class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all
    @headers = Promobar.where("bar_type = 1").order(:order_number)
    @footers = Promobar.where("bar_type = 2").order(:order_number)
    
    @headers_on = Promobar.where(promobar_show: true, bar_type: 1).order(:order_number)
    @headers_off = Promobar.where(promobar_show: false, bar_type: 1)
    @footers_on = Promobar.where(promobar_show: true, bar_type: 2).order(:order_number)
    @footers_off = Promobar.where(promobar_show: false, bar_type: 2)
    
    1.upto(@footers_on.count) do |i|
      @footers_on[i-1].order_number = i 
      @footers_on[i-1].save
    end

    1.upto(@footers_off.count) do |i|
      @footers_off[i-1].order_number = 1000 
      @footers_off[i-1].save
    end

    1.upto(@headers_on.count) do |i|
      @headers_on[i-1].order_number = i
      @headers_on[i-1].save
    end
    
    1.upto(@headers_off.count) do |i|
      @headers_off[i-1].order_number = 1000
      @headers_off[i-1].save
    end
    
    scripts = ShopifyAPI::ScriptTag.all
    @counter = scripts.count

    if @promobars.any?
      unless scripts.any?
        script = ShopifyAPI::ScriptTag.new
        script.event = "onload"
        script.src = script_url(:protocol => 'https')+'.js'
        script.save

        @counter = '1'
      end
    end


    @sc = ShopifyAPI::ScriptTag.first || 'No scripts detected'
  end
end
