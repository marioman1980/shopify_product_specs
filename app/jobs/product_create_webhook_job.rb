class ProductCreateWebhookJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    specs = ['neck', 'body']

    shop.with_shopify_session do
    	@product = ShopifyAPI::Product.find(webhook[:id])
    	specs.each do |s|
				@product.add_metafield(ShopifyAPI::Metafield.new({
					:namespace => 'guitars',
					:key => s,
					:value => 'Enter Value',
					:value_type => 'string'
				}))
    	end
    end
  end
end
