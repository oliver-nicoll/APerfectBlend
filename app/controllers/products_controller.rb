class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find_by(id: params[:id])
    end

    
    def show
        @product = Product.find_by(id: params[:id])
        @cart = @product.cart_products.build(user_id: current_user.id)
    end
    
    def new
        @product = Product.new
    end
    
    def create
        product = Product.create(product_params)
        redirect_to products_path(product)
    end

    def edit
        @product = Product.find_by(id: params[:id])
        @cart = @product.cart_products.build(user_id: current_user.id)
    end
    
    def update
        product = Product.find_by(id: params[:id])
        product.update(product_params)
        redirect_to products_path(product)
    end
    
      private
        def product_params
          params.require(:product).permit(
            :product_name,
            :product_description,
            :sold_at,
            :instock,
            :image_url
          )
        end
end
