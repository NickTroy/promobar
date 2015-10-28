if Rails.configuration.cache_classes
  # ShopifyApp::SessionRepository.storage = SessionStorage
  ShopifyApp::SessionRepository.storage = 'Shop'
else
  ActionDispatch::Reloader.to_prepare do
    # ShopifyApp::SessionRepository.storage = SessionStorage
    ShopifyApp::SessionRepository.storage = 'Shop'
  end
end
