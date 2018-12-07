class ProductCreateWebhookJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
    	binding.pry
    	@product = ShopifyAPI::Product.find(webhook[:id])
    end
  end
end
