class ProductsController < ApplicationController
  before_action :get_product, :only=>[:show, :update, :edit, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
      @product = Product.new(permit_product_params)
    if @product.save
      redirect_to product_path(@product.id)
    else 
      render 'new'
    end
  end

  def update
    if @product.update(permit_product_params)
        redirect_to product_path(@product.id)
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
  end

  private 
  def permit_product_params
    params.require(:product).permit(:product_name, :product_price, :product_description, :product_quantity, :product_avail_quantity, :product_sell_price, :product_images)
  end

   def get_product
    @product = Product.find(params[:id])
  end
end
