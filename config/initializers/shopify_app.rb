ShopifyApp.configure do |config|
  config.application_name = "Product Specifications"
  config.api_key = ENV['API_KEY']
  config.secret = ENV['API_SECRET']
  config.scope = "read_products, write_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end