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
		respond_to do |format|
			if @character.save
				format.html { redirect_to(root_path, flash[:success] = "Your character was entered into the system successfully." ) }
				format.js
			else
				format.html { render :action => "new" }
				format.js
			end
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
		@character = Character.find(params[:id])
		respond_to do |format|
			if @character.update_attributes(params[:character])  
				format.html { redirect_to(root_path, flash[:success] = "Your character was updated successfully." ) }
				format.js
			else
				format.html { render :action => "edit" }
				format.js
			end
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
