class GamesController < ApplicationController
    def index
        @games=Game.all
    end
    
    def new
        @game = Game.new
    end
    
    def create
        @game = Game.create(game_params)
        
        if @game.valid?
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    private
    
    def game_params
        params.require(:game).permit(:name, :description)
    end
end
