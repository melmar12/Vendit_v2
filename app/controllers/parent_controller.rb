class ParentController < ApplicationController
  def parentpage
      @post = Post.all.order("created_at DESC")
  end
end
