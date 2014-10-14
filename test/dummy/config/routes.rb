Rails.application.routes.draw do

  mount SpreeSubscriptions::Engine => "/spree_subscriptions"
end
