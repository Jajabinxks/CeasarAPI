Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get '/encrypt' => 'ceasar_home#encrypt'
    get '/decrypt' => 'ceasar_home#decrypt'
    get '/cryptanalyse' => 'ceasar_home#cryptanalyse'
    root 'ceasar_home#encrypt'
end
