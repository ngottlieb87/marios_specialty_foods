class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:sort] == "most_recent"
      @products = @products.order(:created_at => :desc).limit(3)
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :country_origin)
  end
end
