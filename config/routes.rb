Rails.application.routes.draw do
  namespace :api do
    get "/query_params_game" => "params_game#query_params_game_action"
  end
end
