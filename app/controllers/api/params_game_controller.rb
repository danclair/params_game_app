class Api::ParamsGameController < ApplicationController
  def query_params_game_action
    render "params_game.json.jb"
  end
end
