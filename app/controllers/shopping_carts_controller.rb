class ShoppingCartsController < ApplicationController


	def create
		product = Product.find(params[:product_id])
		@s_b = ShoppingBag.create(user_id: current_user.id, product_id: product.id)
		redirect_to products_path
	end

	def index
		@shopping_carts = ShoppingBag.all
	end
	

end
