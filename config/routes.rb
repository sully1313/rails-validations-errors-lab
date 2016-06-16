Rails.application.routes.draw do

  root "site#index"

  resources :owners do
  resources :pets do
  end
  end
  end

end
