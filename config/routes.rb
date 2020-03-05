Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_game#query_params_game_action"
    get "/segment_params_url/:thevariable" => "params_game#query_params_game_action"

    get "/guess_number/:theguess" => "params_game#guess_action"
    post "guess_number" => "params_game#guess_action"
    post "body_login" => "params_game#login_action"
  end
end
