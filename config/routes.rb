Tr8nRailsClientsdkSample::Application.routes.draw do
  mount Tr8nClientSdk::Engine => "/tr8n_client_sdk"

  root :to => 'home#index'

  match ':controller(/:action(/:id))(.:format)'
end
