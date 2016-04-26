class Screenshot < ActiveRecord::Base
	belongs_to :user
	belongs_to :persona_app
end
