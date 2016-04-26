class Screenshot < ActiveRecord::Base
	belongs_to :persona_app
	belongs_to :user
end
