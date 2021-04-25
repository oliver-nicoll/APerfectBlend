class CartsController < ApplicationController
    
    def new
        @cart = Cart.new
    end

    def create
        @cart = Cart.new(cart_params)

        if @cart.save 
            redirect_to cart_path(@cart)
        else
            render :new
        end
    end

    def index
        @cart = Cart.all
    end

    def show
        @cart = Cart.find(params[:id])
    end

    def checkout

    end

    private 
    def cart_params
        params.require(:cart).permit(:user_id, :checkout)
    end
end
