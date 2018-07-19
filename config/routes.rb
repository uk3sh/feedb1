Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/sms' => "forms#sms", :as => :sms

  resources :forms do
    resources :submissions
  end

end
