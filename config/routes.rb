DataDrivenPolicy::Application.routes.draw do
  root :to              => "pages#home",             :as => :home
  get "test"            => "pages#test",             :as => :test

end
