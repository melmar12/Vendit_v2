class DashboardController < ApplicationController
  before_action :require_user, only: [:index]

  def index
    @post = Post.all.order("created_at DESC")
    @alert = Alert.all.order("created_at DESC")
    @documents = Document.all.order("created_at DESC")
  end

end
