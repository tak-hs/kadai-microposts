class ToppagesController < ApplicationController
  def index
      if logged_in?
        @micropost = current_user.microposts.build  # form_for 用
        @microposts = Micropost.all.order('created_at DESC').page(params[:page])
    end
  end
end
