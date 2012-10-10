Ccrissman::Application.routes.draw do

  match '/' => 'about#create', as: '/', via: "post"
  root to: 'about#index'

  match '/samples/:slug' => 'samples#show', as: 'sample'

end
