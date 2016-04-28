class AppArchive < ActiveRecord::Base
	belongs_to :user
	belongs_to :persona_app
	has_attached_file :archive_id, dependent: :destroy
end
