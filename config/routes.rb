DataDrivenPolicy::Application.routes.draw do
  root :to                     => "pages#home",                :as => :home
  get  "historic_data"         => "pages#historic_data",       :as => :historic_data
  post "historic_data"         => "pages#fetch_historic_data", :as => :fetch_historic_data
  get  "msa_search"            => "pages#msa_search",          :as => :msa_search
  post "msa_search"            => "pages#fetch_msa_search",    :as => :fetch_msa_search
end
