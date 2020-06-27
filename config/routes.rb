Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
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
  resources :comments, defaults: { format: :html}
  resources :events, defaults: { format: :html}
  resources :event_creators, defaults: { format: :html}
  resources :event_guests, defaults: { format: :html}
  resources :invitations, defaults: { format: :html}
  resources :mailboxes, defaults: { format: :html}
  resources :organizations, defaults: { format: :html}
  resources :organization_administrators, defaults: { format: :html}
  resources :replies, defaults: { format: :html}
  resources :start_date_options, defaults: { format: :html}
  resources :votes, defaults: { format: :html}
  resources :searches, default: { format: :html}
  resources :messages, defaults: {format: :html}
  resources :aup, default: { format: :html}
  resources :to_s, default: { format: :html}
  resources :reports, default: { format: :html}
  resources :report_comments, default: { format: :html}
  resources :report_organizations, default: { format: :html}
  resources :total_report, default: { format: :html}
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

end
