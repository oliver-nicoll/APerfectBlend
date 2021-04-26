class CartProductsController < ApplicationController
    def create
        cart_products = CartProduct.create(cart_params)
        #message = add a flash message here
        redirect_to user_path(cart_products.user), flash: { message: message }
    end

    def add_to_cart
        id =  params[:product_id].to_i
        session[:cart] << params[:product_id]
        if session[:cart].include?(product_id)
           #figure out logic :quantity + 1
        redirect_to products_path
        else
            flash[:message]= "Something went wrong, try again"
    end
    
    private
    
    def cart_params
        params.require(:cart_products).permit(
        :cart_id,
        :product_id,
        :quantity
        )
    end
    def load_cart
        @cart = Product.find(session[:cart])
    end
end
