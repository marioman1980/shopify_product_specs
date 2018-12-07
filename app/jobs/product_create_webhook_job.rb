class ProductCreateWebhookJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
    	@product = ShopifyAPI::Product.find(webhook[:id])
			@product.add_metafield(ShopifyAPI::Metafield.new({
				:namespace => 'guitars',
				:key => 'author',
				:value => 'Kurt Vonnegut',
				:value_type => 'string'
			}))      	
    end
  end
end
