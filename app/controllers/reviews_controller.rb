class ReviewsController < ApplicationController

    def create
        review = Review.new(review_params)
        if review.save
            render json: review, status: :created
        else
            render json: {"errors": review.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        review = Review.find_by(id:params[:id])
        if review
            review.destroy
            head :no_content
        else
            render json: {"error": "Review not found"}, status: :not_found
        end
    end

    private

    def review_params
        params.permit(:title, :description, :score, :show_id)
    end

end
