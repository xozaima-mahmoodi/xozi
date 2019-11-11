module Api
  module Mendil
    class UsersController < ApplicationController
      def index
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