Rails.application.routes.draw do
 root "blogs#index"
 resources :blogs do
      resources :comments
end

get "/comments" => "comments#list"
get "/comments" => "comments#show"

end
