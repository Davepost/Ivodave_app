class TopicsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @title = @topic.name
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.build(params[:topics])
  end
end




