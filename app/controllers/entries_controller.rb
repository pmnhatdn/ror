class EntriesController < ApplicationController
  before_filter :signed_in_user, only: [:show, :create, :destroy]
  def create
  	@entry = current_user.entries.build(params[:entry])
    if @entry.save
      flash[:success] = "Posted successfully!"     
      
    else
      flash[:error] = "Please input content"	        
    end    
    redirect_to blog_path
  end   

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to blog_path }
      format.json { head :no_content }
    end
  end
end
