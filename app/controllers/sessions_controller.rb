class SessionsController < ApplicationController
    def index
        render "new"
    end

    def new
    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to tasks_path
        else
            render "new"
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to new_session_path
    end
end