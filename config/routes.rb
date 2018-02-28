Rails.application.routes.draw do
  root :to => "action_steps#index"
  # Routes for the Measures_of_success resource:
  # CREATE
  get "/measures_of_successes/new", :controller => "measures_of_successes", :action => "new"
  post "/create_measures_of_success", :controller => "measures_of_successes", :action => "create"

  # READ
  get "/measures_of_successes", :controller => "measures_of_successes", :action => "index"
  get "/measures_of_successes/:id", :controller => "measures_of_successes", :action => "show"

  # UPDATE
  get "/measures_of_successes/:id/edit", :controller => "measures_of_successes", :action => "edit"
  post "/update_measures_of_success/:id", :controller => "measures_of_successes", :action => "update"

  # DELETE
  get "/delete_measures_of_success/:id", :controller => "measures_of_successes", :action => "destroy"
  #------------------------------

  # Routes for the Resource_needed resource:
  # CREATE
  get "/resource_neededs/new", :controller => "resource_neededs", :action => "new"
  post "/create_resource_needed", :controller => "resource_neededs", :action => "create"

  # READ
  get "/resource_neededs", :controller => "resource_neededs", :action => "index"
  get "/resource_neededs/:id", :controller => "resource_neededs", :action => "show"

  # UPDATE
  get "/resource_neededs/:id/edit", :controller => "resource_neededs", :action => "edit"
  post "/update_resource_needed/:id", :controller => "resource_neededs", :action => "update"

  # DELETE
  get "/delete_resource_needed/:id", :controller => "resource_neededs", :action => "destroy"
  #------------------------------

  # Routes for the Action_step resource:
  # CREATE
  get "/action_steps/new", :controller => "action_steps", :action => "new"
  post "/create_action_step", :controller => "action_steps", :action => "create"

  # READ
  get "/action_steps", :controller => "action_steps", :action => "index"
  get "/action_steps/:id", :controller => "action_steps", :action => "show"

  # UPDATE
  get "/action_steps/:id/edit", :controller => "action_steps", :action => "edit"
  post "/update_action_step/:id", :controller => "action_steps", :action => "update"

  # DELETE
  get "/delete_action_step/:id", :controller => "action_steps", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
