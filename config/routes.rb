Rails.application.routes.draw do
  get "/c/:id", to: 'collections#redirect'
  get "/:id", to: redirect("https://www.archsystems.com/%{id}.aspx")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
