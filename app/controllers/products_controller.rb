class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:sort] == "most_recent"
      @products = @products.order(:created_at => :desc).limit(3)
    elsif params[:sort] == "made_in_usa"
      @products = @products.where(:country_origin => "USA")
    elsif params[:sort] == "most_reviews"
      @products = Product.select("products.name, products.id, products.cost, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
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

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product Updated!"
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Artist Deleted"
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :country_origin)
  end
end
