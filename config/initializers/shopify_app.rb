ShopifyApp.configure do |config|
  config.api_key = "1542338d97c3e62b5b1e0a8b3ab8c5a8"
  config.secret = "dd149cca1adf1ec3e7383c02ad8b1a2e"
  config.redirect_uri = "https://promotionbar-nicktroy.c9users.io/auth/shopify/callback"
  config.scope = "read_orders, read_products, write_script_tags, read_script_tags"
  config.embedded_app = true
end
