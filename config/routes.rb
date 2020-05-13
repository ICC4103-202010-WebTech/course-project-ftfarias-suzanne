Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events , shallow: true do
        resources :comments
      end
      resources :comments
    end
  end


  resources :users, defaults: { format: :html}
  resources :user_profiles, defaults: { format: :html}
  resources :comments, defaults: { format: :html}
  resources :events, defaults: { format: :html}
  resources :event_creators, defaults: { format: :html}
  resources :event_guests, defaults: { format: :html}
  resources :invitations, defaults: { format: :html}
  resources :mailboxes, defaults: { format: :html}
  resources :organizations, defaults: { format: :html}
  resources :organization_administrators, defaults: { format: :html}
  resources :replies, defaults: { format: :html}
  resources :start_date_polls, defaults: { format: :html}
  resources :start_date_options, defaults: { format: :html}
  resources :system_administrators, defaults: { format: :html}
  resources :user_profiles, defaults: { format: :html}
  resources :votes, defaults: { format: :html}
  resource :logout, defaults: { format: :html}

end
