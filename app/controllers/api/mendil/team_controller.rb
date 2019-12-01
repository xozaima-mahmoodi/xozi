module Api
  module Mendil

    class TeamController < ApplicationController
      before_action :find_team, only: [:show, :update, :destroy]

      def index
        team = Team.all
        render jsonapi: team
      end

      def show
        render jsonapi: @team
      end

      def create
        team = Team.new(team_params)

        if team.save
          render jsonapi: team
        else
          render json: team.errors
        end  
      end

      def update
        if @team.update(team_params)
          render jsonapi: @team
        else
          render json: @team.errors 
        end  
      end

      def destroy
        @team.destroy

        flash[:notice] = "Team Removed"
        redirect_to team_path
      end



      private
        def find_team
          @team = Team.find(params[:id])
        end

        def team_params
          params.require(:team).permit(:name, :description, :user_id)
        end
    end
  end      
end
