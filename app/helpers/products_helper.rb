module ProductsHelper
	def add_metafields
		@product.add_metafield(ShopifyAPI::Metafield.new({
			:namespace => 'guitars',
			:key => 'neck',
			:value => 'Enter Value',
			:value_type => 'string'
		}))  	
	end
end
