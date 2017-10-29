Rails.application.routes.draw do
  match '/sums' =>'csv#sums',via: :post
 # match '/filters' =>'tasks#filters',via: :post
 # match '/intervals' =>'tasks#intervals',via: :post
 # match '/lin_regressions' =>'tasks#lin_regressions',via: :post
end
