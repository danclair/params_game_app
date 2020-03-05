class Api::ParamsGameController < ApplicationController
  def query_params_game_action
    input_name = params["thevariable"]

    @output_msg = "#{input_name}"
    render "params_game.json.jb"
  end

  def guess_action
    winning_number = 34
    input_guess = params["theguess"].to_i
    if input_guess > winning_number
      @message = "Pick lower!"
    elsif input_guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render "guess_number.json.jb"
  end

  def login_action
    input_username = params["username"]
    input_password = params["password"]
    if input_username == "hugh" && input_password == "swordfish"
      @message = "Valid credentials"
    else
      @message = "Invalid credentials"
    end
    render "body_params.json.jb"
  end
end
