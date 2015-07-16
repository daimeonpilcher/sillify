Rails.application.routes.draw do
	root 'welcome#index'
	resources :user, :sessions, :results, :blanks, :words	

end

#       Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            welcome#index
#   user_index GET    /user(.:format)              user#index
#              POST   /user(.:format)              user#create
#     new_user GET    /user/new(.:format)          user#new
#    edit_user GET    /user/:id/edit(.:format)     user#edit
#         user GET    /user/:id(.:format)          user#show
#              PATCH  /user/:id(.:format)          user#update
#              PUT    /user/:id(.:format)          user#update
#              DELETE /user/:id(.:format)          user#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#      results GET    /results(.:format)           results#index
#              POST   /results(.:format)           results#create
#   new_result GET    /results/new(.:format)       results#new
#  edit_result GET    /results/:id/edit(.:format)  results#edit
#       result GET    /results/:id(.:format)       results#show
#              PATCH  /results/:id(.:format)       results#update
#              PUT    /results/:id(.:format)       results#update
#              DELETE /results/:id(.:format)       results#destroy
#       blanks GET    /blanks(.:format)            blanks#index
#              POST   /blanks(.:format)            blanks#create
#    new_blank GET    /blanks/new(.:format)        blanks#new
#   edit_blank GET    /blanks/:id/edit(.:format)   blanks#edit
#        blank GET    /blanks/:id(.:format)        blanks#show
#              PATCH  /blanks/:id(.:format)        blanks#update
#              PUT    /blanks/:id(.:format)        blanks#update
#              DELETE /blanks/:id(.:format)        blanks#destroy
#        words GET    /words(.:format)             words#index
#              POST   /words(.:format)             words#create
#     new_word GET    /words/new(.:format)         words#new
#    edit_word GET    /words/:id/edit(.:format)    words#edit
#         word GET    /words/:id(.:format)         words#show
#              PATCH  /words/:id(.:format)         words#update
#              PUT    /words/:id(.:format)         words#update
#              DELETE /words/:id(.:format)         words#destroy
