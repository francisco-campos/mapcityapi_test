Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :calculations do
      collection do
        get 'fibonacci/:number', to: 'calculations#fibonacci'
        get 'sequence-fibonacci/:number', to: 'calculations#sequence_fibonacci'
        get 'factorial/:number', to: 'calculations#factorial'
      end
    end
  end

end
