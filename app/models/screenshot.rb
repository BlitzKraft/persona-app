class Screenshot < ActiveRecord::Base
	belongs_to :user
	belongs_to :persona_app
	has_attached_file :screenshot_id, dependent: :destroy
end
