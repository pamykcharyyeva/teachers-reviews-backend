module Api
    module V1
        class ReviewsController < ApplicationController


                # create method
                def create
                    review = Review.new(review_params)

                    if review.save
                        # create instens of reviewserializer and pass in review, and convert it to serializer_json
                    render json: ReviewSerializer.new(review).serialized_json
                    else 
                        render json: {error: review.errors.messages}, status: 422
                    end
                end


                  # destroy method
                 def destroy
                    # find review based on id
                    review = Review.find_by(params[:id])

                    if review.destroy
                    head :no_content
                    else 
                        render json: {error: review.errors.messages}, status: 422
                    end
    
                end



                # strong params 
                private

                def review_param
                    params.require(:review).params(:title, :description, :store, :teacher_id)
                end

            
        end
    end
end
