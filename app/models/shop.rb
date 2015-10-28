class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  def self.store(session)
    shop = self.new(domain: session.url, token: session.token)
    shop.save!
    shop.id
  end

  def self.retrieve
    if shop = self.current
      ShopifyAPI::Session.new(shop.domain, shop.token)
    end
  end

end
