class JotsController < ApplicationController
    skip_before_action :check_authentication
    
    def index
        @jots = Jot.all
        render json: @jots
    end

    def show
        jot = Jot.find_by(id: params[:id])
        if jot 
            render json: jot, except: [:created_at, :updated_at]
        else
            render json: {message: 'jot not found'}
        end
    end
    
    def create
        jot = Jot.create(jot_params)
        render json: jot, except: [:created_at, :updated_at]
        
    end

    def new
        @jot = Jot.new(jot_params)
    end

    def update
        jot = Jot.find(params[:id])
        jot.update(jot_params)
        render json: jot, except: [:created_at, :updated_at]
    end

    def destroy
        jot = Jot.find_by(id: params[:id])
        jot.destroy
    end

    private
    def jot_params
        params.require(:jot).permit(:tags, :title, :body, :user_id )
    end
end
