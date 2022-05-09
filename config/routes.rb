Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    # colection, member
    collection do
      get 'top'
    end
    member do
      get 'chef'
    end
    # get restaurants/:restaurant_id/reviews/new
    # post restaurant/:restaurant_id/review
    resources :reviews, only: [:new, :create]
  end
end
