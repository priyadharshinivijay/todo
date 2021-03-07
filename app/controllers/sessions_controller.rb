class SessionsController < ApplicationController
    def new
    end
    def create
        user=User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render plain: "Ypu entered ct"
        else
            render plain: "not crct"
        end
        
    end
end