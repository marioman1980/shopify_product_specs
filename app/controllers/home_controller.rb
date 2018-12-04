class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

  def create
    @test_product = ShopifyAPI::Product.new(test_params(:title => 'bar'))
    @test_product.save!
  end  

  private

    def test_params(params_passed)
      params = ActionController::Parameters.new(test_product: params_passed)
      params.require(:test_product).permit(:title)
  	end
end
