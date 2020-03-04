class Api::ParamsGameController < ApplicationController
  def query_params_game_action
    input_name = params["my_name"]

    @output_msg = "#{input_name}"
    render "params_game.json.jb"
  end
end
