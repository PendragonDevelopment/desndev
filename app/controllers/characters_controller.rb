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
	end

	def edit
		@user = User.find(params[:user_id])
		@character = @user.character
	end

	def update
		@user = User.find(params[:user_id])
		@character = Character.find(params[:id])
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

	def total_points
      @character = Character.find(params[:id])
	  @total = @character.aesthetics + @character.analysis + @character.charisma + @character.curiosity + @character.empathy + @character.intuition + @character.willpower
	  if @total < 45
	  	render :flash => "You still have points to assign."
	  elsif @total > 45
	  	render :flash => "You've gone over your points total! Please re-assign."
	  else
	  	redirect_to :action => 'show', :id => @character
	  end	  		
	end
end
