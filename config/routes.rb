# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :portfolios
  resources :blogs
end
