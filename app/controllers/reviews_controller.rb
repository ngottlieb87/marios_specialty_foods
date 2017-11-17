class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "review successfully added!"
      redirect_to product_path(@product.id)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def destroy
    @review = review.find(params[:id])
    @review.destroy
    flash[:alert] = "review Deleted"
    redirect_to review_path(@review.product_id)
  end

  private
    def review_params
      params.require(:review).permit(:author, :content, :rating, :product_id)
    end
end
