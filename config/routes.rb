Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
end
