module Api
  module Mendil
    class UsersController < ApplicationController
      def index
        authorize (User)
        users = User.all
        render jsonapi: users
      end

      def show
        render jsonapi: @user
      end

      def create
        authorize (User)
        user = User.new(user_params)

        if user.save
          render jsonapi: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def update
        user = User.find(params[:id])
        if user.update(user_params)
          render jsonapi: user
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @user.destroy
      end


      private

        def set_user
        @user = User.find(params[:id])
        authorize(@user)
        end

        
        def user_params
          params.require(:user).permit(
            :first_name, :last_name, :email, :password, :role
          )
        end
    end
  end
end