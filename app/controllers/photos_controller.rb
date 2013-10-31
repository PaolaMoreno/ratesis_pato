class PhotosController < ApplicationController

   def index
     # @variable_test = params[:variable_test]
      @photo = Photos.find(:all)
   end

   def show
      @photo = Photos.find(2)
   end

   def edit
    @photo = Photos.find(2)
  end

   def update
    @photo = Photos.find(2)
    if @photo.update_attributes(params[:photo])
      flash[:notice] = 'Photo rating value was successfully updated.'
      redirect_to :action => 'show', :id => @photo
    else
      render :action => 'edit'
    end
  end


end
