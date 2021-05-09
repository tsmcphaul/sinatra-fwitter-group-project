# class TweetsController < ApplicationController
#     use Rack::Flash
#     get '/tweets' do
#         if logged_in?
#             @user = User.find_by_id(session[:user_id])
#             erb :'/tweets/tweets'
#         else
#             redirect to "/login"
#         end
#     end

#     get '/tweets/new' do
#         if logged_in?
#             erb :'/tweets/create_tweet'
#         else
#             redirect "/login"
#         end
#     end

#     post '/tweets' do
#         @tweet = current_user.tweets.create(:content => params[:content])
#         erb :"/tweets/tweets"
#     end

#     get '/tweets/:id' do
#         if logged_in?
#             @tweet = Tweet.find_by_id(params[:id])
#             erb :'/tweets/show_tweet'
#         else
#             redirect "/login"
#         end
#     end

#     get '/tweets/:id/edit' do
#         if logged_in?
#             @tweet = Tweet.find_by_id(params[:id])
#             if @tweet.user.username == current_user.username
#                 erb :'/tweets/edit_tweet'
#             else
#                 flash[:message] = "You are not #{@tweet.user.username}!"
#                 erb :'/tweets/tweets'
#             end
#         else
#             redirect "/login"
#         end
#     end

#     patch '/tweets/:id' do
#         @tweet = current_user.tweets.find_by(id: params[:id])
#         if @tweet
#             @tweet.update(:content => params[:content])
#             erb :"/tweets/tweets"
#         else
#             redirect "/tweets/#{@tweet.id}/edit"
#         end
#     end

#     delete '/tweets/:id' do
#         tweet = current_user.tweets.find_by(id: params[:id])
#         if tweet && tweet.destroy
#             redirect '/tweets'
#         else
#             flash[:message] = "You can't delete someone else's tweet!"
#             erb :"/tweets/tweets"
#         end
#     end

# end
