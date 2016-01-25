ShopifyApp.configure do |config|
  config.api_key = "25e38448ba5a2181320c5b37b9a8c60e"
  config.secret = "2e6e6e5d72f2213bc36d4b0ad7945940"
  config.redirect_uri = "https://promobar.arborgentry.com/auth/shopify/callback"
  config.scope = "read_orders, read_products, write_script_tags, read_script_tags"
  config.embedded_app = true
end
