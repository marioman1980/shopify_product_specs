class ProductCreateWebhookController < ShopifyApp::WebhooksController

  def product_create
    params.permit!
    ProductCreateWebhookJob.perform_now(shop_domain: shop_domain, webhook: webhook_params.to_h)
    head :no_content
  end

  private

	  def webhook_params
	    params.except(:controller, :action, :type)
	  end
end