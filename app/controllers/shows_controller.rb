class ShowsController < ApplicationController

    def index
        render json: Show.all
    end

    def show
        show = Show.find_by(id:params[:id])
        if show
            render json: show
        else
            render json: {"error": "Show not found"}, status: :not_found
        end
    end

    def create
        new_show = Show.new(show_params)
        if new_show.save
            render json: new_show, status: :created
        else
            render json: {error: new_show.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        show = Show.find_by(id:params[:id])
        if show.update(show_params)
            render json: show
        else
            render json: {"errors": show.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        show = Show.find_by(id:params[:id])
        if show
            show.destroy
            head :no_content
        else
            render json: {"error": "Show not found"}, status: :not_found
        end
    end

    private

    def show_params
        params.permit(:name, :image_URL)
    end

    # def options
    #     @options ||= {include:%i[reviews]}
    # end

end
