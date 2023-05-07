MetaFieldApi::Engine.routes.draw do
    resources :metafields, only: [:index, :show, :create, :update, :destroy]
end
