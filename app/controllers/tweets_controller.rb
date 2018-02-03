class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    redirect_to root_path
  end

  def destroy
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image1, :image2, :image3, :image4).merge(user_id: current_user.id)
  end
end
