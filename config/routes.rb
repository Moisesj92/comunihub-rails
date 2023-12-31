Rails.application.routes.draw do
  devise_for :users, path: 'auth/', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'auth/sessions',
    registrations: 'auth/registrations'
  }
end
