module Api
  module Mendil
    class UsersController < ApplicationController
      def index
        authorize (User)

        users = User.all
        render jsonapi: users
      end

      def show
        
      end

      def create
        
      end

      def update
        
      end

      def destroy
        
      end
    end
  end
end
