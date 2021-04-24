class CartProductsController < ApplicationController
    def create
        cart_products = CartProduct.create(cart_params)
        #message = add a flash message here
        redirect_to user_path(cart_products.user), flash: { message: message }
    end
    
    private
    
    def cart_params
        params.require(:cart_products).permit(
        :cart_id,
        :product_id,
        :quantity
        )
    end
end
