class DashboardController < ApplicationController
  def index
    @post = Post.all.order("created_at DESC")
    @alert = Alert.all.order("created_at DESC")
  end
end
