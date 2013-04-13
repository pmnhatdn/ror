class EntriesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  def create
  	@entry = current_user.entries.build(params[:entry])
    if @entry.save
      flash[:success] = "Posted successfully!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
