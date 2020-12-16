class Api::V1::GamesController < ApplicationController

    def index
        games = Game.all
        render json: GameSerializer.new(games)
    end
    
    def create
        game = Game.new(game_params)
        debugger
        if game.save
            render json: GameSerializer.new(game), status: :accepted
        else
            render json: {errors: game.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def game_params
        params.require(:game).permit(:score, :user_name)
    end


end
