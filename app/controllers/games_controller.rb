class GamesController < ApplicationController
  # Add your GamesController code here

  def index
      games = Game.all
      render json: games, status: 201
  end

  def show
      game = Game.find_by(id: params["id"].to_i)
      render json: game, status: 201

  end

  def update
      game = Game.find_by(id: params["id"].to_i)
      game.update(state: params["state"])
      render json: game, status: 201
  end

  def create

      game = Game.create(state: params["state"])
      render json: game, status: 201
  end
end
