class PersonaAppsController < ApplicationController
	def new
		if !current_user.nil?
			@persona_app = PersonaApp.new
		else 
			redirect_to new_user_session_path
		end
	end
	def edit
		@persona_app = PersonaApp.find(params[:id])
	end

	def create
		@persona_app = PersonaApp.new(persona_app_params)
		@persona_app.user_id = current_user.id
		if @persona_app.save
			redirect_to @persona_app
		else
			format.html { render :new }
		end
	end

	def update
		@persona_app = PersonaApp.find(params[:id])
		if @persona_app.update(persona_app_params)
			@persona_app.save
			redirect_to persona_app_path(@persona_app)
		end
	end

	def show
		@persona_app = PersonaApp.find(params[:id])
	end

	def destroy
	end

	def index
		@persona_apps = PersonaApp.all
	end

	private
	def persona_app_params
		params.require(:persona_app).permit(:id, :name, :description, :icon)
	end
end
