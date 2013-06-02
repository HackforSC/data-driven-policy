DataDrivenPolicy::Application.routes.draw do
  root :to                     => "pages#home",                :as => :home
  get "test"                   => "pages#test",                :as => :test
  get "historic_data"          => "pages#historic_data",       :as => :historic_data
  post "historic_data"         => "pages#fetch_historic_data", :as => :fetch_historic_data
end
