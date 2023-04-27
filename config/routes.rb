MetaFieldApi::Engine.routes.draw do
  get 'meta_fields/index'
  get 'meta_fields/show'
  post 'meta_fields/create'
  get 'meta_fields/update'
  get 'meta_fields/destroy'
end
