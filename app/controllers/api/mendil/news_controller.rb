module Api
  module Mendil

    class NewsController < ApplicationController
      before_action :find_news, only: [:show, :update, :destroy]

      def index
        news = News.all
        render jsonapi: news
      end

      def show
        render jsonapi: @news
      end

      def create
        news = News.new(news_params)
        if news.save
          render jsonapi: news
        else
          render json: news.errors
        end  
      end

      def update
        if @news.update(news_params)
          render jsonapi: @news
        else
          render jsonapi: @news.errors 
        end  
      end

      def destroy
        @news.destroy

        flash[:notice] = "News Removed"
      end



      private
        def find_news
          @news = News.find(params[:id])
        end

        def news_params
          params.require(:news).permit(:title, :description, :user_id, :team_id, :player_id)
        end
    end
  end      
end
