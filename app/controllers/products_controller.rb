class ProductsController < ShopifyApp::AuthenticatedController
	protect_from_forgery with: :null_session
  def new
  	@product = ShopifyAPI::Product.find(params[:id])  	
  end

  def create
  end

end
