class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    if request.query_parameters.empty?
      @promobars = Promobar.all
    else
      @promobars = Promobar.where( 'name LIKE ?', '%' + request.query_parameters[:promobar][:name] + '%' ).all
    end
  end
end
