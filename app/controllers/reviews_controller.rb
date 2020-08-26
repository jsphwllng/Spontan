class ReviewsController < ApplicationController


  def create
  	@participation = Participation.find(params[:participation_id])
  	@review = Review.new(review_params)
  	@review.participation = @participation
  	@review.save
  	redirect_to member_path(@participation.user)
  end

  private

def review_params
	params.require(:review).permit(:score, :review)
end

end