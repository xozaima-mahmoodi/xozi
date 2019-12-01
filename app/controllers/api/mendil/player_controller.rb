module Api
  module Mendil

    class PlayerController < ApplicationController
      before_action :find_player, only: [:show, :update, :destroy]

      def index
        player = Player.all
        render jsonapi: player
      end

      def show
        render jsonapi: @player
      end

      def create
        player = Player.new(player_params)

        if player.save
          render jsonapi: player
        else
          render json: player.errors
        end  
      end

      def update
        if @player.update(player_params)
          render jsonapi: @player
        else
          render jsonapi: @player.errors 
        end  
      end

      def destroy
        @player.destroy

        flash[:notice] = "Player Removed"
      end



      private
        def find_player
          @player = Player.find(params[:id])
        end

        def player_params
          params.require(:player).permit(:first_name, :last_name, :player_post, :user_id, :team_id, :news_id)
        end
    end
  end      
end
