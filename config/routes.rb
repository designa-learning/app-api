Rails.application.routes.draw do
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :tasks, only: [:index, :create, :update, :destroy]
  end
end
