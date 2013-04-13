class StaticPagesController < ApplicationController
  def home
  	    
  end

  def account
  end

  def blog
  	@entry = current_user.entries.build if signed_in?
  	@entries = current_user.entries.paginate(page: params[:page],:per_page => 6) if signed_in?
  end

  def listofusers
  	@users = users.paginate(page: params[:page],:per_page => 6) if signed_in?
  end
end
