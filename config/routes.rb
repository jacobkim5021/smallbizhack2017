Rails.application.routes.draw do
  get 'users/new'
  
  get 'resume/list'
  get 'resume/new'
  post 'resume/create'
  get 'resume/list'
  get 'resume/show'
  get 'resume/delete'

  root 'application#hello'
end
