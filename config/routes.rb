Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :clientes_produtos
  resources :clientes
  resources :produtos

  root to: "produtos#index"

  resources :produtos, :path => "produtos" do
    collection do
      get "/relatorio/" => "produtos#relatorio", :as => "relatorio"
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end







