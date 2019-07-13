class ReviewsController < ApplicationController

    def create
        @product = Product.find(params[:product_id])
        @review = Review.new(review_params)
        @review.product = @product
    
        if @review.save!
            redirect_to @product
          else
            redirect_to @product, notice: "Error"
          end
        end
    
      def destroy
        @review = Review.find(params[:id])
        @review.destroy
          redirect_to @review.product
    end

  private
  def review_params
      params.require(:review).permit(:description, :rating).merge(user: current_user)
  end
end

