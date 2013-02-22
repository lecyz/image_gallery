class ImagesController < ApplicationController
  def index	
  	@image = Image.order("created_at ASC")
  end

  def create
  	@image = Image.new(params[:comment])
  	if @image.save
  		flash[:notice] = "new comment added ..."
  		redirect_to images_url
  	else
  		flash[:error] = "you must entering text ..."
  		render :new
  	end
  end

  def new
    @image = Image.new
  end 

  # def show
  #   @image = Image.find(params[:id])
  # end

end
