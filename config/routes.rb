Ccrissman::Application.routes.draw do

  match '/' => 'about#create', :as => '/', :via => "post"
  root :to => 'about#index'

end
