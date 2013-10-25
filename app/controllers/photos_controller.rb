class PhotosController < ApplicationController

   def show
      @photo = Photos.find(2)
   end



end
