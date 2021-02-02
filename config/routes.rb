Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :blogs
  root "blogs#index"
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
