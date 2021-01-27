module Api
    module V1
        class TeachersController < ApplicationController

            # index method
                def index
                    teachers = Teacher.all

                    render json: TeacherSerializer.new(teachers, options).serialized_json
                end


            #  show method 
                def show
                    # find teacher based of slug parameter that we specified in our route
                    teacher = Teacher.find_by(slug: params[:slug])

                    render json: TeacherSerializer.new(teacher, options).serialized_json
                end


             # create method
                def create
                    teacher = Teacher.new(teacher_params)

                    if teacher.save
                    render json: TeacherSerializer.new(teacher).serialized_json
                    else 
                        render json: {error: teacher.errors.messages}, status: 422
                    end

                end


                # update method
                def update
                # find teacher based of slug parameter that we specified in our route
                    teacher = Teacher.find_by(slug: params[:slug])

                    if teacher.update(teacher_params)
                    render json: TeacherSerializer.new(teacher, options).serialized_json
                    else 
                        render json: {error: teacher.errors.messages}, status: 422
                    end
    
                 end


                 # destroy method
                def destroy
                    # find teacher based of slug parameter that we specified in our route
                    teacher = Teacher.find_by(slug: params[:slug])

                    if teacher.destroy
                    head :no_content
                    else 
                        render json: {error: teacher.errors.messages}, status: 422
                    end
    
                end



            # strong params 
                private

                def teacher_params
                    params.require(:teacher).permit(:name, :subject_name, :image_url)
                end

                # to include this as second argiment for our serializer
                def options
                    # specify array of resources, which will be reviews
                    @options ||= {include: %i[reviews]}
                end


            
        end
    end
end