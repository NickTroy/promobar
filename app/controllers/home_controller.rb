class HomeController < AuthenticatedController
  # GET /promobars
  # GET /promobars.json
  def index
    @promobars = Promobar.all.order(:bar_type => SORT_ASC)
  end
end
