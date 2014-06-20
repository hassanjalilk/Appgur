
class PictureController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to picture_url
		else
			render :new
		end
	end

	def update
		@picture = Picture.find(params[:id])
		@picture.update_attributes(picture_params)
		redirect_to root_path
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to root_path
	end

	private

	def picture_params
		params.require(:picture).permit(:artist, :title, :url)
	end

end
















