class Promobar < ActiveRecord::Base
  validates :name,
            presence: true,
            uniqueness: true

  validates :url_link,
            :format => { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/ix },
            :allow_blank => true

  # after_save :generate_script
  after_destroy :script_cleanup

  private

    # Creates a promotion bar script
    def generate_script
      # scripts = ShopifyAPI::ScriptTag.all


    end

    # Cleanups a promotion bar script
    def script_cleanup
      scripts = ShopifyAPI::ScriptTag.all

      if scripts.any?
        scripts.each do |script|
          script.destroy
        end
      end
    end


end
