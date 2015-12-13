Rails.application.routes.draw do
  get 'pages/demo'

  root :to => 'pages#demo'
end
