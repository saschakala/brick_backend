class Api::V1::GamesController < ApplicationController

    def index
        games = Game.game_sort
        render json: GameSerializer.new(games)
    end
    
    def create
        game = Game.new(game_params)
        if game.user && game.save
            render json: GameSerializer.new(game), status: :accepted 
        else
            render json: {errors: game.errors.full_messages}
        end
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
        render json: game
    end


    private

    def game_params
        params.require(:game).permit(:score, :user_name)
    end


end
