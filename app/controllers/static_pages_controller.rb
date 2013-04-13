class StaticPagesController < ApplicationController
  def home
  	@entry = current_user.entries.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page],:per_page => 6)
  end

  def account
  end

  def help
  end
end
