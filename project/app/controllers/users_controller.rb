class UsersController < ApplicationController
    def index
    end
    
    def show
        user= User.find_by(id:params[:id])
        render json: { status: 200, user: user}
        
    end
    
    def new
        user= User.new
        render json: {status: 200, user: user}
    end
    
    def create
        user = User.new(user_params)

        
        if user.save
           
            render json:{ status: 200, user: user }
        else
            
            render json: {status: 500, err: user.errors }  
        end
    end

    
    def edit
        user= User.find_by(id:params[:id]) 
        render json: { status: 200, user: user}

    end
    
    def update
        
    end
    
    def delete
    end


    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :role)
        end
end
