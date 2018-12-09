class ProductsController < ShopifyApp::AuthenticatedController
  def new
  	@product = ShopifyAPI::Product.find(params[:id])  	
  end

  def show
  	@product = ShopifyAPI::Product.find(params[:id])  	
  end  

  def create
  end

end
