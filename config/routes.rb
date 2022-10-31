Rails.application.routes.draw do
  scope defaults: { format: :json } do
    resources :tasks, only: [:index, :create, :update, :destroy]
  end
end
