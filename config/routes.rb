Rails.application.routes.draw do

  match("/cuisines", { :controller => "application", :action => "cuisines", :via => "get" })
  match("/dishes", { :controller => "application", :action => "dishes", :via => "get" })
  match("/dishes/:id", { :controller => "application", :action => "dishes_id", :via => "get" })
  match("/neighborhoods", { :controller => "application", :action => "neighborhoods", :via => "get" })
  match("/venues", { :controller => "application", :action => "venues", :via => "get" })
  match("/venues/:id", { :controller => "application", :action => "venues_id", :via => "get" })
  match("/users", { :controller => "application", :action => "users", :via => "get" })
  match("/users/:id", { :controller => "application", :action => "users_id", :via => "get" })
  match("/add_bookmark", { :controller => "application", :action => "add_bookmark", :via => "get" })
  match("/users/:id/bookmarks", { :controller => "application", :action => "user_bookmarks", :via => "get" })
  
  match("/dises/:id/bookmarks", { :controller => "application", :action => "dishes_bookmark", :via => "get" })
  match("/venues/:id/bookmarks", { :controller => "application", :action => "venues_bookmarks", :via => "get" })
  match("/remove_bookmark/:id", { :controller => "application", :action => "remove_bookmark", :via => "get" })
  match("/users/:id/bookmarked_dishes", { :controller => "application", :action => "users_bookmark_dishes", :via => "get" })
  match("/dishes/:id/experts", { :controller => "application", :action => "dishes_experts", :via => "get" })
  match("/venues/:id/specialties", { :controller => "application", :action => "venues_specialties", :via => "get" })
  match("/venues/:id/fans", { :controller => "application", :action => "venues_fans", :via => "get" })
  # /dishes and /venues with querystrings
  match("/users/:id/bookmarks", { :controller => "application", :action => "users_bookmark_dishes", :via => "get" })
  
  # ====================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
