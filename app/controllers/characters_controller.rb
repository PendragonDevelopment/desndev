class CharactersController < ApplicationController
	def show
	end

	def index
		@user = User.find(params[:user_id])
	end

	def create
		@user = User.find(params[:user_id])
		@character = Character.new(params[:character])
		if @character.save
			flash[:success] = "Your character was entered into the system successfully."
			redirect_to root_path
		else
			render 'new'
		end
	end

	def new
		@user = User.find(params[:user_id])
		@character = Character.new
	end

	def update
	end

	def destroy
	end

end
