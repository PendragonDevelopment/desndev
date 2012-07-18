class CharactersController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@character = @user.character
	end

	def index
		@user = User.find(params[:user_id])
		@character = @user.character
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
		@character.attributes_total = (@character.analysis + @character.aesthetics + @character.empathy + @character.charisma + @character.curiosity + @character.intuition + @character.willpower)
	end

	def edit
		@user = User.find(params[:user_id])
		@character = @user.character
	end

	def update
		@user = User.find(params[:user_id])
		@character = Character.find(params[:id])
		@character.attributes_total = (@character.analysis + @character.aesthetics + @character.empathy + @character.charisma + @character.curiosity + @character.intuition + @character.willpower)
		if @character.update_attributes(params[:character])  
			flash[:success] = "Your character was entered into the system successfully."
			redirect_to user_character_path(@user, @character)
		else
			render 'edit'
		end
	end

	def destroy
		Character.find(params[:id]).destroy
		redirect_to :action => 'new'
	end
end
